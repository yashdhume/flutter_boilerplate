import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/email_auth_notifier.dart';
import 'package:frontend/app/authentication/logic/validators/email_auth_validators.dart';

class PasswordLoginInput extends ConsumerWidget {
  final TextEditingController controller;

  const PasswordLoginInput(this.controller, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(emailAuthProvider);
    return TextFormField(
      controller: controller,
      validator: EmailValidators.validatePassword,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        prefixIcon: const Icon(
          Icons.key,
          color: Colors.green,
        ),
        errorText: state.whenOrNull(invalidPassword: (_, msg) => msg),
        errorStyle: TextStyle(fontSize: 18.sp),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(9.r)),
        ),
      ),
    );
  }
}
