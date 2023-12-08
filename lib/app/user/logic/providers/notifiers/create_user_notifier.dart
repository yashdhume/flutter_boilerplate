import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/api/api.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/api/state/api_state.dart';
import 'package:frontend/common/extensions/object.dart';
import 'package:frontend/common/log/logger.dart';

final createUserProvider =
    StateNotifierProvider<CreateUserProvider, ApiState<UserEntity>>(
  CreateUserProvider.new,
);

class CreateUserProvider extends StateNotifier<ApiState<UserEntity>> {
  Ref ref;
  CreateUserProvider(this.ref) : super(const ApiState.loading('Init'));

  Future<void> run(CreateUserDto createUserDto) async {
    final response =
        await ref.read(apiServiceProvider).api.userPost(body: createUserDto);
    if (!response.isSuccessful || response.body == null) {
      logger.e(response.error.runtimeType);
      state = ApiState.error(response.error.toApiError);
    }
    state = ApiState.data(response.body!);
  }
}
