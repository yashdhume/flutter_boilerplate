import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:frontend/app/notification/logic/models/notification_channel.dart';
import 'package:frontend/common/enums/vibration.dart';
import 'package:frontend/main/enums/os.dart';
import 'package:frontend/main/environment.dart';

class LocalNotificationService {
  static late LocalNotificationService _instance;
  factory LocalNotificationService() {
    //ignore: join_return_with_assignment
    _instance = LocalNotificationService._internal();
    return _instance;
  }
  LocalNotificationService._internal();
  final _localNotifications = FlutterLocalNotificationsPlugin();
  static LocalNotificationService get instance => _instance;
  Future<void> init() async {
    await _localNotifications.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(),
      ),
    );
  }

  Future<void> requestPermission() async {
    switch (EnvConfig.os) {
      case OS.android:
        await _localNotifications
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>()
            ?.requestNotificationsPermission();
      case OS.ios:
        await _localNotifications
            .resolvePlatformSpecificImplementation<
                IOSFlutterLocalNotificationsPlugin>()
            ?.requestPermissions(
              alert: true,
              badge: true,
              sound: true,
            );
    }
  }

  void send({
    required String title,
    required String body,
    required NotificationChannel channel,
    String? payload,
  }) {
    channel.vibration.vibrate();
    _localNotifications.show(
      (Random().nextDouble() * 1000).toInt(),
      title,
      body,
      payload: payload,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(
          categoryIdentifier: channel.name,
          threadIdentifier: channel.id,
          subtitle: channel.description,
        ),
      ),
    );
  }
}
