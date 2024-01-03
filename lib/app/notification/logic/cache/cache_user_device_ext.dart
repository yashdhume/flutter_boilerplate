import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/common/cache/constants/cache_keys.dart';
import 'package:frontend/common/cache/service/app_cache.dart';

extension CacheUserDeviceExt on AppCache {
  Future<void> setUserDevice(UserDeviceEntity tokenData) async {
    await write(key: CacheKeys.userDevice, value: tokenData.toJson());
  }

  Future<UserDeviceEntity?> getUserDevice() async {
    final value = await read(CacheKeys.userDevice);
    if (value == null) return null;
    return UserDeviceEntity.fromJson(value as Map<String, dynamic>);
  }
}
