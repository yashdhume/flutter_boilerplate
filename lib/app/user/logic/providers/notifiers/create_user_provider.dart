import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/app/authentication/logic/providers/notifiers/auth_state_notifier.dart';
import 'package:frontend/app/user/logic/api/user_api_client.dart';
import 'package:frontend/common/state/async_response_state.dart';
import 'package:frontend/common/ui/widgets/toast/toast.dart';
import 'package:frontend/common/utils/language.dart';

final createUserNotifierProvider = StateNotifierProvider.autoDispose<
    CreateUserProvider, AsyncResponseState<UserEntity>>(
  CreateUserProvider.new,
);

class CreateUserProvider extends StateNotifier<AsyncResponseState<UserEntity>> {
  final UserApiClient api;
  CreateUserProvider(this.ref)
      : api = UserApiClient(),
        super(const AsyncResponseState.initial());

  final Ref ref;
  Future<void> create(CreateUserDto user) async {
    state = AsyncResponseState.loading(Language.text.fetching);
    final response = await api.create(user);
    response.when(
      success: (user) {
        ref.read(authStateProvider.notifier).signUpComplete(user);
        state = AsyncResponseState.data(user);
      },
      error: (error) {
        Toast.showError(error.message ?? Language.text.genericErrorMessage);
        state = AsyncResponseState.error(error);
      },
    );
  }
}
