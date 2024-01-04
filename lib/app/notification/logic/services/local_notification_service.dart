import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/app/notification/logic/constants/notification_channels.dart';
import 'package:frontend/common/enums/vibration.dart';
import 'package:frontend/common/extensions/string.dart';
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

  Future<void> _show({
    required String title,
    required String body,
    required NotificationChannelEntity channel,
  }) async {
    await _localNotifications.show(
      (Random().nextDouble() * 1000).toInt(),
      title,
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.name,
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

  Future<void> sendFromFcm(RemoteMessage message, {bool vibrate = true}) async {
    final channelPayload = message.data['channel'] as String?;
    final channel = channelPayload != null
        ? NotificationChannelEntity.fromJsonFactory(channelPayload.toMap())
        : NotificationChannels.defaultChannel;

    if (vibrate) Vibration.regular.vibrate();

    if (message.notification == null) return;
    if (message.notification!.title.isNullOrEmpty) return;
    if (message.notification!.body.isNullOrEmpty) return;

    await _show(
      title: message.notification!.title!,
      body: message.notification!.body!,
      channel: channel,
    );
  }
}
