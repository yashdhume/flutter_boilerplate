import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/app/authentication/logic/models/firebase_user_details.dart';

part 'third_party_auth_state.freezed.dart';

@freezed
class ThirdPartyAuthState with _$ThirdPartyAuthState {
  const factory ThirdPartyAuthState.initial() = _Initial;

  const factory ThirdPartyAuthState.loading(String msg) = _Loading;

  const factory ThirdPartyAuthState.success(FirebaseUserDetails user) =
      _Success;

  const factory ThirdPartyAuthState.invalidVerification(
    FirebaseAuthException firebaseAuthException,
    String message,
  ) = _InvalidVerification;

  const factory ThirdPartyAuthState.unknownError(
    Object error,
    StackTrace? stackTrace,
  ) = _UnknownError;

  const factory ThirdPartyAuthState.nullUser() = _NullUser;
}
