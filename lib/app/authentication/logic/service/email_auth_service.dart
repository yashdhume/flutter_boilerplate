import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';
import 'package:frontend/app/authentication/logic/error/auth_exception.dart';
import 'package:frontend/app/authentication/logic/service/auth_service.dart';

class EmailAuthService extends AuthService {
  EmailAuthService(super.ref);

  Future<UserCredential> signIn(String email, String password) async {
    return auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<UserCredential> signUp(String email, String password) async {
    return auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> sendEmailVerification() async {
    if (auth.currentUser == null) {
      throw AuthException(LoginType.email);
    }
    await auth.currentUser!.sendEmailVerification();
  }
}
