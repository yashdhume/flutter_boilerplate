import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/app/authentication/logic/config/firebase_config.dart';
import 'package:frontend/app/notification/logic/services/fcm_token_service.dart';
import 'package:frontend/common/error/custom_error_widget.dart';
import 'package:frontend/common/log/crashlytics.dart';
import 'package:frontend/common/log/logger.dart';
import 'package:frontend/common/log/riverpod_observers.dart';
import 'package:frontend/common/utils/language.dart';
import 'package:frontend/main/app.dart';
import 'package:frontend/main/enums/env.dart';
import 'package:frontend/main/environment.dart';

Future<void> mainCommon(Env env) async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  EnvConfig(env);
  await EnvConfig.instance.init();

  Language();
  await Language.instance.init('en');

  Log();
  Log.instance.init();

  await Firebase.initializeApp(options: FirebaseConfig.currentPlatform);

  final analytics = FirebaseAnalytics.instance;
  await analytics.setAnalyticsCollectionEnabled(!kDebugMode);

  final crashlytics = FirebaseCrashlytics.instance;
  await crashlytics.setCrashlyticsCollectionEnabled(!kDebugMode);

  final performance = FirebasePerformance.instance;
  await performance.setPerformanceCollectionEnabled(!kDebugMode);

  FCMTokenService();
  await FCMTokenService.instance.init();

  ErrorWidget.builder = CustomErrorWidget.new;

  FlutterError.onError = (FlutterErrorDetails errorDetails) {
    if (!kDebugMode) {
      crashlytics.recordFlutterFatalError(errorDetails);
    }
    FlutterError.dumpErrorToConsole(errorDetails, forceReport: true);
  };
  if (!kDebugMode) {
    PlatformDispatcher.instance.onError = (error, stack) {
      Crashlytics.recordError(error, stack, fatal: true);
      return true;
    };
  }

  runApp(
    ProviderScope(
      observers: [RiverpodObserver()],
      child: ScreenUtilInit(builder: (_, __) => const App()),
    ),
  );
}
