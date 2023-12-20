import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:frontend/api/models/api_error.dart';
import 'package:frontend/api/state/api_response.dart';
import 'package:frontend/app/authentication/logic/service/token_service.dart';
import 'package:frontend/common/extensions/object.dart';
import 'package:frontend/common/extensions/string.dart';
import 'package:frontend/main/environment.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  ApiClient();
  final baseUrl = EnvConfig.serverUrl;
  Future<Map<String, String>> _getHeader() async {
    return {
      'authorization': 'Bearer ${await TokenService.getToken()}',
      'content-type': 'application/json',
    };
  }

  ApiResponse<T> _onApiResponse<T>({
    required http.Response response,
    required T Function(Map<String, dynamic>) transformResponse,
  }) {
    if (response.statusCode == 400) {
      return ApiResponse.error(
        ApiError(message: 'Something went wrong', code: 404),
      );
    }
    if (response.statusCode != 200 && response.statusCode != 201) {
      return ApiResponse.error(response.body.toApiError);
    }

    return ApiResponse.success(transformResponse(response.body.toMap()));
  }

  Future<ApiResponse<T>> get<T>({
    required String endpoint,
    required T Function(Map<String, dynamic>) transformResponse,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final header = await _getHeader();
      return Isolate.run(
        () async {
          final response = await http.get(
            Uri.parse('$baseUrl$endpoint')
                .replace(queryParameters: queryParameters),
            headers: header,
          );
          return _onApiResponse<T>(
            response: response,
            transformResponse: transformResponse,
          );
        },
        debugName: 'GET $endpoint',
      );
    } on HttpException catch (e) {
      return ApiResponse.error(ApiError(message: e.message, code: 404));
    }
  }

  Future<ApiResponse<T>> post<T>({
    required String endpoint,
    required T Function(Map<String, dynamic>) transformResponse,
    required Map<String, dynamic> body,
  }) async {
    try {
      final header = await _getHeader();
      return Isolate.run(
        () async {
          final response = await http.post(
            Uri.parse('$baseUrl$endpoint'),
            headers: header,
            body: jsonEncode(body),
          );
          return _onApiResponse<T>(
            response: response,
            transformResponse: transformResponse,
          );
        },
        debugName: 'POST $endpoint',
      );
    } on HttpException catch (e) {
      return ApiResponse.error(ApiError(message: e.message, code: 404));
    }
  }

  Future<ApiResponse<T>> put<T>({
    required String endpoint,
    required T Function(Map<String, dynamic>) transformResponse,
    required Map<String, dynamic> body,
  }) async {
    try {
      final header = await _getHeader();
      return Isolate.run(
        () async {
          final response = await http.put(
            Uri.parse('$baseUrl$endpoint'),
            headers: header,
            body: jsonEncode(body),
          );
          return _onApiResponse<T>(
            response: response,
            transformResponse: transformResponse,
          );
        },
        debugName: 'PUT $endpoint',
      );
    } on HttpException catch (e) {
      return ApiResponse.error(ApiError(message: e.message, code: 404));
    }
  }

  Future<ApiResponse<T>> delete<T>({
    required String endpoint,
    required T Function(Map<String, dynamic>) transformResponse,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final header = await _getHeader();
      return Isolate.run(
        () async {
          final response = await http.delete(
            Uri.parse('$baseUrl$endpoint')
                .replace(queryParameters: queryParameters),
            headers: header,
          );
          return _onApiResponse<T>(
            response: response,
            transformResponse: transformResponse,
          );
        },
        debugName: 'DELETE $endpoint',
      );
    } on HttpException catch (e) {
      return ApiResponse.error(ApiError(message: e.message, code: 404));
    }
  }
}
