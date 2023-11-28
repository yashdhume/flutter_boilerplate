import 'package:frontend/app/authentication/logic/enums/login_type.dart';
import 'package:frontend/common/models/either.dart';

class AuthException implements Exception {
  LoginType loginType;
  Either<Error, Object>? error;
  StackTrace? stackTrace;

  AuthException(this.loginType, {this.error, this.stackTrace});

  @override
  String toString() {
    return 'AuthException{loginType: $loginType, error: $error, '
        'stackTrace: $stackTrace}';
  }
}
