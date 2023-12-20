import 'package:flutter/material.dart';
import 'package:frontend/app/authentication/ui/widgets/email/refresh_email_verification_button.dart';
import 'package:frontend/app/authentication/ui/widgets/email/resend_email_verification_button.dart';
import 'package:frontend/app/authentication/ui/widgets/email/sign_out_button.dart';
import 'package:frontend/common/utils/language.dart';

class WaitForEmailVerificationPage extends StatelessWidget {
  final String email;
  const WaitForEmailVerificationPage({required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              Language.text.sentVerificationEmail,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                email,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const Spacer(),
            const RefreshEmailVerificationButton(),
            const SizedBox(height: 20),
            const ResendEmailVerificationButton(),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
