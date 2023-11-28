import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/phone_auth_notifier.dart';

class PhoneLogin extends ConsumerWidget {
  const PhoneLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(phoneAuthProvider);
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: authState.when(
        initial: () => const Center(child: Text('Inital')),
        loading: (msg) => Text('Loading $msg'),
        waitingForUserInput: () => const Text('waiting'),
        codeSent: (verificationId) => Text('codeSent $verificationId'),
        gotFirebaseUser: (user) => Text('gotFirebaseUser $user'),
        success: (user) => Text('success $user'),
        codeRetrievalTimedOut: () => const Text('codeRetrievalTimedOut'),
        verificationError: (_, verificationId, msg) =>
            Text('verificationError $verificationId $msg'),
        invalidPhoneNumber: (_, retryFn, __) =>
            const Text('invalidPhoneNumber'),
        unknownError: (error, stackTrace) => Text('error $error'),
        nullUser: () => const Text('null user'),
      ),
    );
  }
}
