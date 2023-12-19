import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/api/state/api_state.dart';
import 'package:frontend/app/user/logic/service/user_service.dart';
import 'package:frontend/common/extensions/object.dart';
import 'package:frontend/common/log/logger.dart';

final createUserProvider =
    StateNotifierProvider<CreateUserProvider, ApiState<UserEntity>>(
  CreateUserProvider.new,
);

class CreateUserProvider extends StateNotifier<ApiState<UserEntity>> {
  final Ref ref;
  final UserService userService;
  CreateUserProvider(this.ref)
      : userService = UserService(ref),
        super(const ApiState.loading('Init'));

  Future<void> run(CreateUserDto createUserDto) async {
    final response = await userService.createUser(createUserDto);
    if (!response.isSuccessful || response.body == null) {
      logger.e(response.error.runtimeType);
      state = ApiState.error(response.error.toApiError);
    }
    state = ApiState.data(response.body!);
  }
}
