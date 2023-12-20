import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/apple_auth_notifier.dart';
import 'package:frontend/common/utils/language.dart';

class AppleLoginButton extends ConsumerWidget {
  const AppleLoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appleAuthNotifier);
    final notifier = ref.read(appleAuthNotifier.notifier);
    final isLoading = state.whenOrNull(loading: (msg) => msg);
    return ElevatedButton(
      onPressed: isLoading == null ? notifier.signIn : null,
      child: isLoading == null
          ? Text(Language.text.signInWithApple)
          : const CircularProgressIndicator(),
    );
  }
}
