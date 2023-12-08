import 'dart:convert';

import 'package:frontend/api/models/api_error.dart';

extension ObjectNullableExt on Object? {
  ApiError get toApiError {
    final val = jsonDecode(jsonEncode(this));
    final json = jsonDecode(val.toString()) as Map<String, dynamic>;

    return ApiError(
      message: json['message'] as String?,
      code: json['statusCode'] as int?,
    );
  }
}
