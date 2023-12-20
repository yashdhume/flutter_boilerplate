import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/auth_providers.dart';
import 'package:frontend/app/user/logic/api/user_api_client.dart';
import 'package:frontend/app/user/logic/state/user_state.dart';
import 'package:frontend/common/utils/language.dart';

final userProvider = StateNotifierProvider<UserNotifierProvider, UserState>(
  (ref) => UserNotifierProvider(ref)..fetch(),
);

class UserNotifierProvider extends StateNotifier<UserState> {
  final Ref ref;
  final UserApiClient api;
  UserNotifierProvider(this.ref)
      : api = UserApiClient(),
        super(UserState.loading(Language.text.emptyString));

  Future<void> fetch() async {
    final response = await api.getMe();
    response.when(
      loading: () => state = UserState.loading(Language.text.fetchingUser),
      success: (data) => state = UserState.user(data),
      error: (error) {
        if (error.code == 404) {
          final firebaseUser = ref.read(authServiceProvider).user;
          if (firebaseUser == null) {
            state = const UserState.error(null);
            return;
          }
          state = UserState.userNotRegistered(firebaseUser);
          return;
        }
        state = UserState.error(error);
        return;
      },
    );
  }
}
