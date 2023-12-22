import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:frontend/common/utils/language.dart';
import 'package:frontend/main/environment.dart';

class Crashlytics {
  Crashlytics();

  static Future<void> setUserId(String userId) async =>
      FirebaseCrashlytics.instance.setUserIdentifier(userId);

  static Future<void> removeUserId() async =>
      FirebaseCrashlytics.instance.setUserIdentifier(Language.text.emptyString);

  static void recordError(
    dynamic exception,
    StackTrace? stackTrace, {
    dynamic reason,
    Iterable<Object> information = const [],
    bool? printDetails,
    bool fatal = false,
  }) {
    if (FirebaseCrashlytics.instance.isCrashlyticsCollectionEnabled) {
      FirebaseCrashlytics.instance.recordError(
        exception,
        stackTrace,
        reason: reason,
        information: information,
        printDetails: printDetails ?? kDebugMode,
        fatal: fatal,
      );
    }
  }

  static void log(String message) => FirebaseCrashlytics.instance.log(message);

  static void recordFlutterError({
    required FlutterErrorDetails error,
    bool fatal = false,
  }) {
    if (FirebaseCrashlytics.instance.isCrashlyticsCollectionEnabled) {
      FirebaseCrashlytics.instance.recordFlutterError(
        error,
        fatal: fatal,
      );
    }
  }

  static void crash() {
    if (!EnvConfig.isProd) FirebaseCrashlytics.instance.crash();
  }
}
