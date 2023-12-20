import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/enums/authentication_mode.dart';
import 'package:frontend/app/authentication/logic/providers/auth_providers.dart';
import 'package:frontend/common/utils/language.dart';

class EmailSignInSwitcher extends ConsumerWidget {
  const EmailSignInSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authModeProvider);
    final notifier = ref.watch(authModeProvider.notifier);
    return ElevatedButton(
      onPressed: () => notifier.state = state == AuthenticationMode.signUp
          ? AuthenticationMode.signIn
          : AuthenticationMode.signUp,
      child: Text(
        state == AuthenticationMode.signUp
            ? Language.text.switchToSignIn
            : Language.text.switchToSignUp,
      ),
    );
  }
}
