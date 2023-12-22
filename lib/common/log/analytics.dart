import 'package:firebase_analytics/firebase_analytics.dart';

class Analytics {
  Analytics();

  static Future<void> setUserId(String? userId) async =>
      FirebaseAnalytics.instance.setUserId(id: userId);

  static Future<void> removeUserId() async =>
      FirebaseAnalytics.instance.setUserId();
  static Future<void> setCurrentScreen(String name) async =>
      FirebaseAnalytics.instance.setCurrentScreen(
        screenName: name,
      );

  static void log({
    required String logName,
    required Map<String, dynamic>? data,
  }) =>
      FirebaseAnalytics.instance.logEvent(name: logName, parameters: data);
}
