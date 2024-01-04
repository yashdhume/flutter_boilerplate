import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/notification/logic/services/notification_service.dart';

final notificationServiceProvider = Provider<NotificationService>(
  NotificationService.new,
);
