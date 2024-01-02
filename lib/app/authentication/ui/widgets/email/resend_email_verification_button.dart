import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/email_auth_notifier.dart';
import 'package:frontend/common/ui/widgets/buttons/big_button.dart';
import 'package:frontend/common/utils/language.dart';

class ResendEmailVerificationButton extends ConsumerStatefulWidget {
  const ResendEmailVerificationButton({super.key});

  @override
  ConsumerState<ResendEmailVerificationButton> createState() =>
      _ResendEmailButtonState();
}

class _ResendEmailButtonState
    extends ConsumerState<ResendEmailVerificationButton> {
  late Timer timer;
  bool canSendEmail = false;
  int timerValue = 0;

  void setTimer() {
    timerValue = 0;
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer t) {
        if (t.isActive && t.tick >= 60) {
          canSendEmail = true;
          timerValue = 0;
          t.cancel();
          timer.cancel();
        }
        timerValue = t.tick;
        setState(() {});
      },
    );
  }

  void sendEmailVerification() {
    if (canSendEmail) {
      ref.read(emailAuthProvider.notifier).service.sendEmailVerification();
      canSendEmail = false;
      setTimer();
    }
  }

  @override
  void initState() {
    super.initState();
    setTimer();
  }

  @override
  Widget build(BuildContext context) {
    return BigButton.secondary(
      onPressed: canSendEmail ? sendEmailVerification : null,
      text: canSendEmail
          ? Language.text.resendEmail
          : '${Language.text.resendEmail} (${60 - timerValue}s)',
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
