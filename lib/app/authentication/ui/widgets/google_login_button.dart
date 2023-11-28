import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/google_auth_notifier.dart';

class GoogleLoginButton extends ConsumerWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(googleAuthProvider);
    final notifier = ref.read(googleAuthProvider.notifier);
    final isLoading = state.whenOrNull(loading: (msg) => msg);
    return ElevatedButton(
      onPressed: isLoading == null ? notifier.signIn : null,
      child: isLoading == null
          ? const Text('Google')
          : const CircularProgressIndicator(),
    );
  }
}
