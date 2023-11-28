import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/enums/authentication_mode.dart';
import 'package:frontend/app/authentication/logic/providers/auth_providers.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/email_auth_notifier.dart';

class EmailSignButton extends ConsumerWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;

  final TextEditingController passwordController;

  const EmailSignButton(
    this.formKey, {
    required this.emailController,
    required this.passwordController,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(emailAuthProvider);
    final notifier = ref.watch(emailAuthProvider.notifier);
    final authMode = ref.watch(authModeProvider);
    return state.maybeWhen(
      loading: (msg) => Column(
        children: [const CircularProgressIndicator(), Text(msg)],
      ),
      orElse: () => ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            authMode == AuthenticationMode.signUp
                ? notifier.signUp(
                    emailController.text,
                    passwordController.text,
                  )
                : notifier.signIn(
                    emailController.text,
                    passwordController.text,
                  );
          }
        },
        child: Text(authMode.name),
      ),
    );
  }
}
