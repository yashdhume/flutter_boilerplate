import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/app/authentication/ui/widgets/apple_login_button.dart';
import 'package:frontend/app/authentication/ui/widgets/email/email_login_input.dart';
import 'package:frontend/app/authentication/ui/widgets/email/email_sign_button.dart';
import 'package:frontend/app/authentication/ui/widgets/email/email_sign_in_switcher.dart';
import 'package:frontend/app/authentication/ui/widgets/email/password_login_input.dart';

class EmailLogin extends ConsumerStatefulWidget {
  const EmailLogin({super.key});

  @override
  ConsumerState<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends ConsumerState<EmailLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.r),
            child: EmailLoginInput(emailController),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: PasswordLoginInput(passwordController),
          ),
          EmailSignButton(
            _formKey,
            emailController: emailController,
            passwordController: passwordController,
          ),
          const EmailSignInSwitcher(),
          if (Platform.isIOS) const AppleLoginButton(),
        ],
      ),
    );
  }
}
