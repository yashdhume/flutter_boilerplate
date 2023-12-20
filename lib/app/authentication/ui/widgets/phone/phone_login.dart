import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/phone_auth_notifier.dart';
import 'package:frontend/common/utils/language.dart';

class PhoneLogin extends ConsumerWidget {
  const PhoneLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(phoneAuthProvider);
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: authState.when(
        initial: () => const CircularProgressIndicator(),
        loading: Text.new,
        waitingForUserInput: () => const CircularProgressIndicator(),
        codeSent: (verificationId) =>
            Text('${Language.text.verifyingCode} $verificationId'),
        gotFirebaseUser: (user) => const Placeholder(),
        success: (user) => const Placeholder(),
        codeRetrievalTimedOut: () => Text(Language.text.codeTimedOut),
        verificationError: (_, verificationId, msg) =>
            Text('$verificationId $msg'),
        invalidPhoneNumber: (_, retryFn, __) =>
            Text(Language.text.invalidPhoneNumber),
        unknownError: (error, stackTrace) => Text(error.toString()),
        nullUser: () => Text(Language.text.genericErrorMessage),
      ),
    );
  }
}
