import 'package:frontend/api/generated/api.swagger.dart';

class NotificationChannels {
  static NotificationChannelEntity defaultChannel =
      const NotificationChannelEntity(
    id: 'default',
    name: 'Default',
    description: 'This our basic notifications',
    userRole: 2,
  );
}
