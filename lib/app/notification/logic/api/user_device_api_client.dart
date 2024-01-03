import 'package:frontend/api/api.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/api/state/api_response.dart';
import 'package:frontend/app/notification/logic/api/user_device_endpoints.dart';

class UserDeviceApiClient extends ApiClient {
  UserDeviceApiClient() : super();

  Future<ApiResponse<UserDeviceEntity>> update(
    UpdateUserDeviceDto updateUserDeviceDto,
  ) {
    final body = updateUserDeviceDto.toJson();
    return post<UserDeviceEntity>(
      endpoint: UserDeviceApiEndpoints.update,
      body: body,
      transformResponse: UserDeviceEntity.fromJson,
    );
  }

  Future<ApiResponse<void>> deleteToken(String id) {
    return delete<void>(
      endpoint: UserDeviceApiEndpoints.base,
      transformResponse: SuccessResponse.fromJson,
      id: id,
    );
  }
}
