import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_verify_auth_state.freezed.dart';

@freezed
class PhoneVerifyAuthState with _$PhoneVerifyAuthState {
  const factory PhoneVerifyAuthState.completed(PhoneAuthCredential credential) =
      _Completed;

  const factory PhoneVerifyAuthState.failed(FirebaseAuthException exception) =
      _Failed;

  const factory PhoneVerifyAuthState.codeSent(
    String verificationId,
    int? resendToken,
  ) = _CodeSent;

  const factory PhoneVerifyAuthState.codeRetrievalTimeout(
    String verificationId,
  ) = _CodeRetrievalTimeout;

  const factory PhoneVerifyAuthState.error(
    Object error,
    StackTrace stackTrace,
  ) = _Error;

  const factory PhoneVerifyAuthState.nullUser() = _NullUserError;
}
