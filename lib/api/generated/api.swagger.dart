// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'api.enums.swagger.dart' as enums;
export 'api.enums.swagger.dart';
export 'api.models.swagger.dart';

part 'api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Api extends ChopperService {
  static Api create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Api(client);
    }

    final newClient = ChopperClient(
        services: [_$Api()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Api(newClient);
  }

  ///
  Future<chopper.Response> jsonGet() {
    return _jsonGet();
  }

  ///
  @Get(path: '/json')
  Future<chopper.Response> _jsonGet();

  ///
  Future<chopper.Response<UserEntity>> userPost(
      {required CreateUserDto? body}) {
    generatedMapping.putIfAbsent(UserEntity, () => UserEntity.fromJsonFactory);

    return _userPost(body: body);
  }

  ///
  @Post(
    path: '/user',
    optionalBody: true,
  )
  Future<chopper.Response<UserEntity>> _userPost(
      {@Body() required CreateUserDto? body});

  ///
  ///@param limit How many in one page
  ///@param page Page number
  ///@param order
  Future<chopper.Response> userGet({
    num? limit,
    num? page,
    enums.UserGetOrder? order,
  }) {
    return _userGet(limit: limit, page: page, order: order?.value?.toString());
  }

  ///
  ///@param limit How many in one page
  ///@param page Page number
  ///@param order
  @Get(path: '/user')
  Future<chopper.Response> _userGet({
    @Query('limit') num? limit,
    @Query('page') num? page,
    @Query('order') String? order,
  });

  ///
  Future<chopper.Response<UserEntity>> userMeGet() {
    generatedMapping.putIfAbsent(UserEntity, () => UserEntity.fromJsonFactory);

    return _userMeGet();
  }

  ///
  @Get(path: '/user/me')
  Future<chopper.Response<UserEntity>> _userMeGet();

  ///
  ///@param id
  Future<chopper.Response> userIdGet({required String? id}) {
    return _userIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/user/{id}')
  Future<chopper.Response> _userIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> userIdPut({
    required String? id,
    required String? body,
  }) {
    return _userIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/user/{id}',
    optionalBody: true,
  )
  Future<chopper.Response> _userIdPut({
    @Path('id') required String? id,
    @Body() required String? body,
  });

  ///
  ///@param id
  Future<chopper.Response> userIdDelete({required String? id}) {
    return _userIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/user/{id}')
  Future<chopper.Response> _userIdDelete({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> addressIdGet({required String? id}) {
    return _addressIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/address/{id}')
  Future<chopper.Response> _addressIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> addressIdPut({
    required String? id,
    required UpdateAddressDTO? body,
  }) {
    return _addressIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/address/{id}',
    optionalBody: true,
  )
  Future<chopper.Response> _addressIdPut({
    @Path('id') required String? id,
    @Body() required UpdateAddressDTO? body,
  });

  ///
  ///@param id
  Future<chopper.Response> addressIdDelete({required String? id}) {
    return _addressIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/address/{id}')
  Future<chopper.Response> _addressIdDelete({@Path('id') required String? id});

  ///
  ///@param limit How many in one page
  ///@param page Page number
  ///@param order
  Future<chopper.Response> addressGet({
    num? limit,
    num? page,
    enums.AddressGetOrder? order,
  }) {
    return _addressGet(
        limit: limit, page: page, order: order?.value?.toString());
  }

  ///
  ///@param limit How many in one page
  ///@param page Page number
  ///@param order
  @Get(path: '/address')
  Future<chopper.Response> _addressGet({
    @Query('limit') num? limit,
    @Query('page') num? page,
    @Query('order') String? order,
  });

  ///
  Future<chopper.Response> addressPost({required CreateAddressDTO? body}) {
    return _addressPost(body: body);
  }

  ///
  @Post(
    path: '/address',
    optionalBody: true,
  )
  Future<chopper.Response> _addressPost(
      {@Body() required CreateAddressDTO? body});
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
