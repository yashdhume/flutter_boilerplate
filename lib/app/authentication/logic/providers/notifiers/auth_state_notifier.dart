import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/auth_providers.dart';
import 'package:frontend/app/authentication/logic/states/auth_state.dart';
import 'package:frontend/app/user/logic/providers/notifiers/user_provider.dart';
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
      (user) {
        if (user == null) {
          state = const AuthState.loggedOut();
        } else if (user.email == null) {
          state = const AuthState.loggedOut();
        } else if (!user.emailVerified) {
          state = AuthState.emailNotVerified(user.email!);
        } else {
          ref.watch(userProvider).when(
                user: (user) => state = AuthState.userLoggedIn(user),
                userNotRegistered: (user) => state = AuthState.signUp(user),
                error: (e) => state = AuthState.error(
                  e?.message ?? Language.text.genericErrorMessage,
                ),
                loading: (msg) => state = AuthState.loading(msg),
              );
        }
      },
      onError: (Object e) {
        state = AuthState.error(e.toString());
      },
    );
  }
}
