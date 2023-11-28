import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';
import 'package:frontend/app/authentication/logic/models/firebase_user_details.dart';
import 'package:frontend/app/authentication/logic/service/phone_auth_service.dart';
import 'package:frontend/app/authentication/logic/states/phone/phone_auth_state.dart';

final phoneAuthProvider =
    StateNotifierProvider<PhoneAuthStateNotifier, PhoneAuthState>(
  PhoneAuthStateNotifier.new,
);

class PhoneAuthStateNotifier extends StateNotifier<PhoneAuthState> {
  late final PhoneAuthService service = PhoneAuthService(ref);
  final Ref ref;

  PhoneAuthStateNotifier(this.ref) : super(const PhoneAuthState.initial());

  Future<void> verifyPhoneNumber(String phone) async {
    final canVerify = state.maybeWhen(
      orElse: () => false,
      initial: () => true,
      waitingForUserInput: () => true,
      invalidPhoneNumber: (_, __, ___) => true,
    );
    if (canVerify) {
      state = const PhoneAuthState.loading('Verifying phone number');
      await service.verifyPhoneNumber(phone);
      await for (final verifyState in service.phoneStatesStream) {
        verifyState.when(
          completed: (PhoneAuthCredential credential) async {
            final userCredentials =
                await service.signInWithCredential(credential);
            state = PhoneAuthState.gotFirebaseUser(
              FirebaseUserDetails(
                user: userCredentials.user!,
                loginType: LoginType.phone,
              ),
            );
          },
          failed: (FirebaseAuthException e) {
            if (e.code == 'invalid-phone-number') {
              state = PhoneAuthState.invalidPhoneNumber(
                e,
                verifyPhoneNumber,
                'The provided phone number is not valid.',
              );
            } else {
              state = PhoneAuthState.verificationError(
                e,
                message: e.message,
              );
            }
          },
          codeSent: (String verificationId, int? resendToken) =>
              state = PhoneAuthState.codeSent(verificationId),
          codeRetrievalTimeout: (String verificationId) {
            if (service.auth.currentUser == null) {
              state = const PhoneAuthState.codeRetrievalTimedOut();
            }
          },
          nullUser: () => state = const PhoneAuthState.nullUser(),
          error: (Object error, StackTrace stackTrace) {
            state = PhoneAuthState.unknownError(error, stackTrace);
          },
        );
      }
    }
  }

  void get acceptToUsePhone {
    state = const PhoneAuthState.waitingForUserInput();
  }

  void get retry {
    state = const PhoneAuthState.waitingForUserInput();
  }

  Future<void> verifyCode(String smsCode, String verificationId) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    try {
      state = PhoneAuthState.loading('Checking if SMS Code $smsCode is valid');

      await service.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        state = PhoneAuthState.verificationError(
          e,
          message: 'The code you entered is invalid',
          verificationId: verificationId,
        );
      } else {
        state = PhoneAuthState.verificationError(
          e,
          message: e.message,
        );
      }
    }
  }

  Future<void> reEnterVerificationCode(String verificationId) async {
    state = PhoneAuthState.codeSent(verificationId);
  }
}
