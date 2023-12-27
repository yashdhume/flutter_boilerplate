import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/common/cache/constants/cache_keys.dart';
import 'package:frontend/common/cache/service/app_cache.dart';

extension CacheNotificationExt on AppCache {
  Future<void> setNotificationToken(NotificationTokenEntity tokenData) async {
    await write(key: CacheKeys.notificationToken, value: tokenData.toJson());
  }

  Future<NotificationTokenEntity?> getNotificationToken() async {
    final value = await read(CacheKeys.notificationToken);
    if (value == null) return null;
    return NotificationTokenEntity.fromJson(value as Map<String, dynamic>);
  }
}
