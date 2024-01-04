import 'package:frontend/api/api.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/api/state/api_response.dart';
import 'package:frontend/app/notification/logic/api/notification_channel/notification_channel_endpoints.dart';

class NotificationChannelApiClient extends ApiClient {
  NotificationChannelApiClient() : super();

  Future<ApiResponse<NotificationChannelEntity>> getMyChannels() {
    return get<NotificationChannelEntity>(
      endpoint: NotificationChannelApiEndpoints.mine,
      transformResponse: NotificationChannelEntity.fromJson,
    );
  }
}
