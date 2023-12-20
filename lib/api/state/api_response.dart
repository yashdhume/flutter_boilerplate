import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/api/models/api_error.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.loading() = _Loading;
  const factory ApiResponse.success(T data) = _Success<T>;
  const factory ApiResponse.error(ApiError error) = _Error;
}
