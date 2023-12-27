import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/app/authentication/logic/providers/auth_providers.dart';
import 'package:frontend/app/authentication/logic/states/auth_state.dart';
import 'package:frontend/app/notification/logic/services/fcm_token_service.dart';
import 'package:frontend/app/user/logic/api/user_api_client.dart';
import 'package:frontend/common/ui/widgets/toast/toast.dart';
import 'package:frontend/common/utils/language.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) {
    final authStateNotifier = AuthStateNotifier(ref)..onAuthStatusChange();
    return authStateNotifier;
  },
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Ref ref;

  AuthStateNotifier(this.ref)
      : super(AuthState.loading(Language.text.emptyString));
  void signUpComplete(UserEntity user) {
    state = AuthState.userLoggedIn(user);
  }

  StreamSubscription<void> onAuthStatusChange() {
    return ref.watch(authServiceProvider).authUserChange.listen(
      (user) async {
        if (user == null) {
          state = const AuthState.loggedOut();
        } else if (user.email == null) {
          state = const AuthState.loggedOut();
        } else if (!user.emailVerified) {
          state = AuthState.emailNotVerified(user.email!);
        } else {
          await FCMTokenService.instance.getToken();
          state = AuthState.loading(Language.text.fetching);
          final response = await UserApiClient().getMe();
          await response.when(
            success: (user) async {
              await FCMTokenService.instance
                  .updateToken(user.notificationTokens);
              state = AuthState.userLoggedIn(user);
            },
            error: (e) async {
              if (e.code == 404) {
                state = AuthState.signUp(user);
                return;
              }
              Toast.showError(e.message ?? Language.text.genericErrorMessage);
              state = AuthState.error(
                e.message ?? Language.text.genericErrorMessage,
              );
              return;
            },
          );
        }
      },
      onError: (Object e) {
        Toast.showError(e.toString());
        state = AuthState.error(e.toString());
      },
    );
  }
}
