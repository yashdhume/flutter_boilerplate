import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/enums/authentication_mode.dart';
import 'package:frontend/app/authentication/logic/service/auth_service.dart';

final authServiceProvider = Provider<AuthService>(
  AuthService.new,
);

final authModeProvider =
    StateProvider<AuthenticationMode>((_) => AuthenticationMode.signUp);
