import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationService {
  final Ref ref;
  NotificationService(this.ref);
  final FirebaseMessaging messaging = FirebaseMessaging.instance;
  Stream<RemoteMessage> get onMessage => FirebaseMessaging.onMessage;
}
