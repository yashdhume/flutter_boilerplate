import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/auth_state_notifier.dart';
import 'package:frontend/common/theme/app_theme.dart';
import 'package:frontend/common/theme/providers/app_theme_provider.dart';
import 'package:frontend/main/environment.dart';
import 'package:frontend/routes/router_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    ref
        .watch(authStateProvider)
        .maybeWhen(loading: (_) {}, orElse: FlutterNativeSplash.remove);
    return MaterialApp.router(
      title: EnvConfig.appName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: ref.read(appRouterProvider).config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
