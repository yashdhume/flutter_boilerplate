import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/app/authentication/logic/models/firebase_user_details.dart';
import 'package:frontend/common/functions/callback.dart';

part 'phone_auth_state.freezed.dart';

@freezed
class PhoneAuthState with _$PhoneAuthState {
  const factory PhoneAuthState.initial() = _Initial;

  const factory PhoneAuthState.loading(String msg) = _Loading;

  const factory PhoneAuthState.waitingForUserInput() = _WaitingForUserInput;

  const factory PhoneAuthState.gotFirebaseUser(FirebaseUserDetails user) =
      _GotFirebaseUser;

  const factory PhoneAuthState.success(FirebaseUserDetails user) = _Success;

  const factory PhoneAuthState.verificationError(
    FirebaseAuthException firebaseAuthException, {
    String? verificationId,
    String? message,
  }) = _VerificationError;

  const factory PhoneAuthState.unknownError(
    Object error,
    StackTrace? stackTrace,
  ) = _UnknownError;

  const factory PhoneAuthState.nullUser() = _NullUser;

  const factory PhoneAuthState.codeSent(String verificationId) = _CodeSent;

  const factory PhoneAuthState.codeRetrievalTimedOut() = _CodeTimedOut;

  const factory PhoneAuthState.invalidPhoneNumber(
    FirebaseAuthException firebaseAuthException,
    StringCallback retry,
    String message,
  ) = _InvalidPhoneNumber;
}
