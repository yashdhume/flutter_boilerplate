import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/email_auth_notifier.dart';
import 'package:frontend/app/authentication/logic/validators/email_auth_validators.dart';

class EmailLoginInput extends ConsumerWidget {
  final TextEditingController controller;

  const EmailLoginInput(this.controller, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(emailAuthProvider);
    return TextFormField(
      controller: controller,
      validator: EmailValidators.validateEmail,
      decoration: InputDecoration(
        hintText: 'Email',
        labelText: 'Email',
        prefixIcon: const Icon(
          Icons.email,
          color: Colors.lightBlue,
        ),
        errorText: state.whenOrNull(invalidEmail: (_, msg) => msg),
        errorStyle: TextStyle(fontSize: 18.sp),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(9.r)),
        ),
      ),
    );
  }
}
