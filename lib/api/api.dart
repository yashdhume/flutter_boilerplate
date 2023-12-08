import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/api/api_interceptor.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/main/environment.dart';

final Provider<ApiService> apiServiceProvider =
    Provider<ApiService>((_) => ApiService()..init());

class ApiService {
  late final Api api;
  ApiService();

  List<RequestInterceptor> get _interceptors => <RequestInterceptor>[
        ApiInterceptor(),
        HttpLoggingInterceptor(),
      ];

  void init() {
    api = Api.create(
      baseUrl: Uri.parse(EnvConfig.serverUrl),
      interceptors: _interceptors,
    );
  }
}
