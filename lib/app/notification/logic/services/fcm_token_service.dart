import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/app/notification/logic/api/notification_token_api_client.dart';
import 'package:frontend/app/notification/logic/cache/cache_notification_ext.dart';
import 'package:frontend/common/cache/service/app_cache.dart';
import 'package:frontend/common/ui/widgets/toast/toast.dart';
import 'package:frontend/common/utils/language.dart';
import 'package:frontend/main/environment.dart';

class FCMTokenService {
  factory FCMTokenService() {
    //ignore: join_return_with_assignment
    _instance = FCMTokenService._internal();
    return _instance;
  }
  FCMTokenService._internal();
  static late FCMTokenService _instance;
  final FirebaseMessaging fcm = FirebaseMessaging.instance;
  User? get user => FirebaseAuth.instance.currentUser;
  final NotificationTokenApiClient _api = NotificationTokenApiClient();
  Stream<String> get onTokenRefresh => fcm.onTokenRefresh;
  late String _token;
  Future<void> init() async {
    await FirebaseMessaging.instance.setAutoInitEnabled(true);
  }

  Future<void> getToken() async {
    _token = await fcm.getToken() ?? '';
  }

  Future<void> updateToken(
    List<NotificationTokenEntity>? notificationTokenEntity,
  ) async {
    await getToken();
    final cachedToken = await AppCache.instance.getNotificationToken();
    if (cachedToken != null) {
      if (_token == cachedToken.fcmToken &&
          EnvConfig.deviceId == cachedToken.deviceId &&
          notificationTokenEntity?.where((e) => e.fcmToken == _token) != null &&
          notificationTokenEntity
                  ?.where((e) => e.deviceId == EnvConfig.deviceId) !=
              null) return;
    }
    await sendToken();
  }

  Future<void> sendToken() async {
    final response = await _api.update(
      CreateNotificationTokenDto(
        deviceId: EnvConfig.deviceId,
        fcmToken: _token,
      ),
    );

    response.when(
      success: (notificationTokenEntity) async =>
          _saveCache(notificationTokenEntity),
      error: (error) =>
          Toast.showError(error.message ?? Language.text.genericErrorMessage),
    );
  }

  Future<void> _saveCache(
    NotificationTokenEntity notificationTokenEntity,
  ) async {
    await AppCache.instance.setNotificationToken(
      NotificationTokenEntity(
        id: notificationTokenEntity.id,
        fcmToken: notificationTokenEntity.fcmToken,
        deviceId: EnvConfig.deviceId,
      ),
    );
  }

  static FCMTokenService get instance => _instance;
  static String get token => _instance._token;
  Future<void> deleteToken() async {
    await _instance.fcm.deleteToken();
    final notificationId = (await AppCache.instance.getNotificationToken())?.id;
    if (notificationId == null) return;
    await _api.deleteToken(notificationId);
  }
}
