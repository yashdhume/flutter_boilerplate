// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$Api extends Api {
  _$Api([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Api;

  @override
  Future<Response<dynamic>> _jsonGet() {
    final Uri $url = Uri.parse('/json');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserEntity>> _userPost({required CreateUserDto? body}) {
    final Uri $url = Uri.parse('/user');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserEntity, UserEntity>($request);
  }

  @override
  Future<Response<dynamic>> _userGet({
    num? limit,
    num? page,
    String? order,
  }) {
    final Uri $url = Uri.parse('/user');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'page': page,
      'order': order,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserEntity>> _userMeGet() {
    final Uri $url = Uri.parse('/user/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserEntity, UserEntity>($request);
  }

  @override
  Future<Response<dynamic>> _userIdGet({required String? id}) {
    final Uri $url = Uri.parse('/user/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _userIdPut({
    required String? id,
    required String? body,
  }) {
    final Uri $url = Uri.parse('/user/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _userIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/user/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _addressIdGet({required String? id}) {
    final Uri $url = Uri.parse('/address/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _addressIdPut({
    required String? id,
    required UpdateAddressDTO? body,
  }) {
    final Uri $url = Uri.parse('/address/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _addressIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/address/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _addressGet({
    num? limit,
    num? page,
    String? order,
  }) {
    final Uri $url = Uri.parse('/address');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'page': page,
      'order': order,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _addressPost({required CreateAddressDTO? body}) {
    final Uri $url = Uri.parse('/address');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
