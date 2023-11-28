import 'package:flutter/material.dart';
import 'package:frontend/app/authentication/ui/widgets/email/refresh_email_verification_button.dart';
import 'package:frontend/app/authentication/ui/widgets/email/resend_email_verification_button.dart';

class WaitForEmailVerificationPage extends StatelessWidget {
  const WaitForEmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'We have sent you an email',
                style: TextStyle(
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Text(
              'We have sent you an email verification to:',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                '',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Spacer(),
            RefreshEmailVerificationButton(),
            SizedBox(height: 20),
            ResendEmailVerificationButton(),
          ],
        ),
      ),
    );
  }
}
