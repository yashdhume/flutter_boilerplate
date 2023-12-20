import 'package:frontend/api/api.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/api/state/api_response.dart';
import 'package:frontend/app/user/logic/api/user_endpoints.dart';

class UserApiClient extends ApiClient {
  UserApiClient() : super();

  Future<ApiResponse<UserEntity>> getMe() {
    return get<UserEntity>(
      endpoint: UserEndpoints.me,
      transformResponse: UserEntity.fromJson,
    );
  }

  Future<ApiResponse<UserEntity>> create(CreateUserDto body) {
    return post<UserEntity>(
      endpoint: UserEndpoints.base,
      body: body.toJson(),
      transformResponse: UserEntity.fromJson,
    );
  }
}
