import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:frontend/app/authentication/logic/service/token_service.dart';

class ApiInterceptor implements RequestInterceptor {
  ApiInterceptor();

  @override
  FutureOr<Request> onRequest(Request request) async {
    final headersCopy = <String, String>{...request.headers};
    headersCopy['authorization'] = 'Bearer ${await TokenService.getToken()}';
    return request.copyWith(headers: headersCopy);
  }
}
