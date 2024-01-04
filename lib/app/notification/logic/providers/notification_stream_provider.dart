import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/notification/logic/providers/notification_providers.dart';
import 'package:frontend/app/notification/logic/services/local_notification_service.dart';

final notificationProvider = Provider<NotificationProvider>((ref) {
  final notificationProvider = NotificationProvider(ref)..onNotification();
  return notificationProvider;
});

class NotificationProvider {
  Ref ref;
  NotificationProvider(this.ref);
  StreamSubscription<void> onNotification() {
    return ref.watch(notificationServiceProvider).onMessage.listen((message) {
      LocalNotificationService.instance.sendFromFcm(message);
    });
  }
}
