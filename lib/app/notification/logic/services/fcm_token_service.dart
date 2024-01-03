import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/app/notification/logic/api/user_device_api_client.dart';
import 'package:frontend/app/notification/logic/cache/cache_user_device_ext.dart';
import 'package:frontend/common/cache/service/app_cache.dart';
import 'package:frontend/common/extensions/object.dart';
import 'package:frontend/common/log/logger.dart';
import 'package:frontend/common/ui/widgets/toast/toast.dart';
import 'package:frontend/common/utils/language.dart';
import 'package:frontend/main/enums/os.dart';
import 'package:frontend/main/environment.dart';
import 'package:logger/logger.dart';

class FCMTokenService {
  factory FCMTokenService() {
    //ignore: join_return_with_assignment
    _instance = FCMTokenService._internal();
    return _instance;
  }
  FCMTokenService._internal();
  static late FCMTokenService _instance;
  final FirebaseMessaging fcm = FirebaseMessaging.instance;
  static FCMTokenService get instance => _instance;
  User? get user => FirebaseAuth.instance.currentUser;
  final UserDeviceApiClient _api = UserDeviceApiClient();
  Stream<String> get onTokenRefresh => fcm.onTokenRefresh;

  static String get token => _instance._token;
  late String _token;
  Future<void> init() async {
    await fcm.setAutoInitEnabled(true);
  }

  Future<void> getToken() async {
    _token = await fcm.getToken() ?? '';
  }

  Future<void> updateToken(
    List<UserDeviceEntity>? notificationTokenEntity,
  ) async {
    await getToken();
    final cachedToken = await AppCache.instance.getUserDevice();
    if (cachedToken != null) {
      if (_token == cachedToken.fcmToken &&
          EnvConfig.deviceId == cachedToken.deviceId &&
          notificationTokenEntity?.where((e) => e.fcmToken == _token) != null &&
          notificationTokenEntity
                  ?.where((e) => e.deviceId == EnvConfig.deviceId) !=
              null) {
        await Log.all(name: 'FCMTokenServiceCached');
        return;
      }
    }

    await Log.all(name: 'FCMTokenServiceUpdated', level: Level.info);
    await sendToken();
  }

  Future<void> sendToken() async {
    final response = await _api.update(
      UpdateUserDeviceDto(
        os: EnvConfig.os.toUpdateUserDeviceDto,
        model: EnvConfig.model,
        deviceId: EnvConfig.deviceId,
        fcmToken: _token,
      ),
    );

    await response.when(
      success: (userDeviceEntity) async => _saveCache(userDeviceEntity),
      error: (e) async {
        Toast.showError(e.message ?? Language.text.genericErrorMessage);
        await Log.all(
          name: 'AuthStateNotifierError',
          data: await e.toMapStringDynamic,
          level: Level.error,
        );
      },
    );
  }

  Future<void> _saveCache(
    UserDeviceEntity userDeviceEntity,
  ) async {
    await AppCache.instance.setUserDevice(
      UserDeviceEntity(
        id: userDeviceEntity.id,
        os: EnvConfig.os.toUserDeviceEntityDto,
        model: EnvConfig.model,
        fcmToken: userDeviceEntity.fcmToken,
        deviceId: EnvConfig.deviceId,
      ),
    );
  }

  Future<void> deleteToken() async {
    await _instance.fcm.deleteToken();
    final userDeviceId = (await AppCache.instance.getUserDevice())?.id;
    if (userDeviceId == null) return;
    await _api.deleteToken(userDeviceId);
  }
}
