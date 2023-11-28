import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loggedOut() = _LoggedOut;

  const factory AuthState.emailNotVerified() = _EmailNotVerified;

  const factory AuthState.loading(String msg) = _Loading;

  const factory AuthState.error(Object? e) = _Error;

  const factory AuthState.userLoggedIn() = _UserLoggedIn;
}
