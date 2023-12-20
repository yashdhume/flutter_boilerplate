import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/app/authentication/logic/config/firebase_config.dart';
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
  await Firebase.initializeApp(options: FirebaseConfig.currentPlatform);
  runApp(
    ProviderScope(
      observers: [RiverpodObserver()],
      child: ScreenUtilInit(builder: (_, __) => const App()),
    ),
  );
}
