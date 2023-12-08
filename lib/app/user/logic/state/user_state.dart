import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/api/models/api_error.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading(String msg) = _Loading;
  const factory UserState.userNotRegistered(User user) = _UserNotRegistered;
  const factory UserState.error(ApiError? e) = _Error;
  const factory UserState.user(UserEntity user) = _User;
}
