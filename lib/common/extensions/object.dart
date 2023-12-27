import 'dart:convert';
import 'dart:isolate';

import 'package:frontend/api/models/api_error.dart';

extension ObjectNullableExt on Object? {
  ApiError get toApiError {
    final val = jsonDecode(jsonEncode(this));
    final json = jsonDecode(val.toString()) as Map<String, dynamic>;

    return ApiError(
      message: json['message'] as String?,
      code: json['status'] as int?,
    );
  }
}

extension ObjectExt on Object {
  Future<Map<String, dynamic>> get toMapStringDynamic async {
    return Isolate.run(() {
      final val = jsonDecode(jsonEncode(this));
      return jsonDecode(val.toString()) as Map<String, dynamic>;
    });
  }
}
