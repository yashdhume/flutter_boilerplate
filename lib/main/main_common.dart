import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/app/authentication/logic/config/firebase_config.dart';
import 'package:frontend/common/log/riverpod_observers.dart';
import 'package:frontend/main/app.dart';
import 'package:frontend/main/enums/env.dart';
import 'package:frontend/main/environment.dart';

Future<void> mainCommon(Env env) async {
  WidgetsFlutterBinding.ensureInitialized();
  EnvConfig(env);
  await EnvConfig.instance.init();
  await Firebase.initializeApp(options: FirebaseConfig.currentPlatform);
  runApp(
    ProviderScope(
      observers: [
        RiverpodObserver(),
      ],
      child: ScreenUtilInit(builder: (_, __) => const App()),
    ),
  );
}
