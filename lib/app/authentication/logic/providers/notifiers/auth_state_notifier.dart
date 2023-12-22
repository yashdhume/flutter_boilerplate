import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/auth_providers.dart';
import 'package:frontend/app/authentication/logic/states/auth_state.dart';
import 'package:frontend/app/user/logic/api/user_api_client.dart';
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
          final response = await UserApiClient().getMe();
          response.when(
            loading: () => state = AuthState.loading(Language.text.fetching),
            success: (data) => state = AuthState.userLoggedIn(data),
            error: (error) {
              if (error.code == 404) {
                final firebaseUser = ref.read(authServiceProvider).user;
                if (firebaseUser == null) {
                  state = const AuthState.loggedOut();
                  return;
                }
                state = const AuthState.loggedOut();
                return;
              }
              state = AuthState.error(
                error.message ?? Language.text.genericErrorMessage,
              );
              return;
            },
          );
        }
      },
      onError: (Object e) {
        state = AuthState.error(e.toString());
      },
    );
  }
}
