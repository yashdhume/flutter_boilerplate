import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/app/authentication/logic/models/firebase_user_details.dart';

part 'email_auth_state.freezed.dart';

@freezed
class EmailAuthState with _$EmailAuthState {
  const factory EmailAuthState.initial() = _Initial;

  const factory EmailAuthState.loading(String msg) = _Loading;

  const factory EmailAuthState.success(FirebaseUserDetails user) = _Success;

  const factory EmailAuthState.invalidEmail(
    FirebaseAuthException firebaseAuthException,
    String message,
  ) = _InvalidEmail;

  const factory EmailAuthState.invalidPassword(
    FirebaseAuthException firebaseAuthException,
    String message,
  ) = _InvalidPassword;

  const factory EmailAuthState.invalidVerification(
    FirebaseAuthException firebaseAuthException,
    String message,
  ) = _InvalidVerification;

  const factory EmailAuthState.unknownError(
    Object error,
    StackTrace? stackTrace,
  ) = _UnknownError;

  const factory EmailAuthState.nullUser() = _NullUser;
}
