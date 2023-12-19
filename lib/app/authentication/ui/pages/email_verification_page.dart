import 'package:flutter/material.dart';
import 'package:frontend/app/authentication/ui/widgets/email/refresh_email_verification_button.dart';
import 'package:frontend/app/authentication/ui/widgets/email/resend_email_verification_button.dart';
import 'package:frontend/app/authentication/ui/widgets/email/sign_out_button.dart';

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
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'We have sent you an email',
                style: TextStyle(
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            const Text(
              'We have sent you an email verification to:',
              style: TextStyle(
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
