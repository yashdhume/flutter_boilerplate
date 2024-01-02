import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/api/models/api_error.dart';

part 'async_response_state.freezed.dart';

@freezed
sealed class AsyncResponseState<T> with _$AsyncResponseState<T> {
  const factory AsyncResponseState.initial() = _Initial;
  const factory AsyncResponseState.loading(String msg) = _Loading;
  const factory AsyncResponseState.error(ApiError? e) = _Error;
  const factory AsyncResponseState.data(T data) = _Data;
}
