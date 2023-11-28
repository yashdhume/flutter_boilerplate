import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';
import 'package:frontend/app/authentication/logic/error/auth_exception.dart';
import 'package:frontend/app/authentication/logic/service/auth_service.dart';
import 'package:frontend/app/authentication/logic/states/phone/phone_verify_auth_state.dart';

class PhoneAuthService extends AuthService {
  PhoneAuthService(super.ref) {
    streamController = StreamController();
  }

  late StreamController<PhoneVerifyAuthState> streamController;

  Stream<PhoneVerifyAuthState> get phoneStatesStream =>
      streamController.stream.asBroadcastStream();

  Future<void> verifyPhoneNumber(String phone) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) {
          streamController.add(PhoneVerifyAuthState.completed(credential));
        },
        verificationFailed: (FirebaseAuthException exception) {
          streamController.add(PhoneVerifyAuthState.failed(exception));
        },
        codeSent: (verificationId, resendToken) {
          streamController.add(
            PhoneVerifyAuthState.codeSent(verificationId, resendToken),
          );
        },
        codeAutoRetrievalTimeout: (verificationId) {
          streamController.add(
            PhoneVerifyAuthState.codeRetrievalTimeout(verificationId),
          );
        },
      );
    } catch (e, st) {
      streamController.add(PhoneVerifyAuthState.error(e, st));
    }
  }

  Future<UserCredential> signInWithCredential(
    PhoneAuthCredential credential,
  ) async {
    final cred = await auth.signInWithCredential(credential);
    if (cred.user == null) {
      streamController.add(const PhoneVerifyAuthState.nullUser());
      throw AuthException(LoginType.phone);
    }
    return cred;
  }
}
