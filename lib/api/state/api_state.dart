import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/api/models/api_error.dart';

part 'api_state.freezed.dart';

@freezed
class ApiState<T> with _$ApiState<T> {
  const factory ApiState.loading(String msg) = _Loading;
  const factory ApiState.error(ApiError e) = _Error;
  const factory ApiState.data(T data) = _Data;
}
