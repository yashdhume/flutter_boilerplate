import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/auth_state_notifier.dart';
import 'package:frontend/app/authentication/ui/pages/email_verification_page.dart';
import 'package:frontend/app/authentication/ui/pages/login_page.dart';
import 'package:frontend/app/home/ui/pages/home_page.dart';

@RoutePage()
class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    return authState.when(
      loggedOut: () => const LoginPage(),
      emailNotVerified: () => const WaitForEmailVerificationPage(),
      loading: (_) => const CircularProgressIndicator(),
      error: (e) => Text(e.toString()),
      userLoggedIn: () => const HomePage(),
    );
  }
}
