import 'package:json_annotation/json_annotation.dart';

part 'api_error.g.dart';

@JsonSerializable()
class ApiError {
  final String? message;
  final int? code;

  ApiError({required this.message, required this.code});

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorToJson(this);

  @override
  String toString() {
    return 'ApiError{message: $message, code: $code}';
  }
}
