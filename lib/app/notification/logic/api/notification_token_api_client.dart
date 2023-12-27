import 'package:frontend/api/api.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/api/state/api_response.dart';
import 'package:frontend/app/notification/logic/api/notification_token_endpoints.dart';

class NotificationTokenApiClient extends ApiClient {
  NotificationTokenApiClient() : super();

  Future<ApiResponse<NotificationTokenEntity>> update(
    CreateNotificationTokenDto createNotificationTokenDto,
  ) {
    final body = createNotificationTokenDto.toJson();
    return post<NotificationTokenEntity>(
      endpoint: NotificationTokenApiEndpoints.update,
      body: body,
      transformResponse: NotificationTokenEntity.fromJson,
    );
  }

  Future<ApiResponse<void>> deleteToken(String id) {
    return delete<void>(
      endpoint: NotificationTokenApiEndpoints.base,
      transformResponse: SuccessResponse.fromJson,
      id: id,
    );
  }
}
