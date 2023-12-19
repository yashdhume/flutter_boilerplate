import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/api/api.dart';
import 'package:frontend/api/generated/api.models.swagger.dart';

class UserService {
  final Ref ref;
  const UserService(this.ref);
  Future<Response<UserEntity>> createUser(CreateUserDto body) async {
    final response =
        await ref.read(apiServiceProvider).api.userPost(body: body);
    return response;
  }

  Future<Response<UserEntity>> getUser() async {
    final response = await ref.read(apiServiceProvider).api.userMeGet();
    return response;
  }
}
