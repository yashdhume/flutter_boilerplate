import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/api/generated/api.swagger.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loggedOut() = _LoggedOut;

  const factory AuthState.emailNotVerified(String email) = _EmailNotVerified;
  const factory AuthState.signUp(User user) = _SignUp;

  const factory AuthState.loading(String msg) = _Loading;

  const factory AuthState.error(Object? e) = _Error;

  const factory AuthState.userLoggedIn(UserEntity user) = _UserLoggedIn;
}
