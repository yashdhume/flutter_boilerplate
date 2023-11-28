import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/auth_providers.dart';
import 'package:frontend/app/authentication/logic/states/auth_state.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) {
    final authStateNotifier = AuthStateNotifier(ref)..onAuthStatusChange();
    return authStateNotifier;
  },
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Ref ref;

  AuthStateNotifier(this.ref) : super(const AuthState.loading(''));

  StreamSubscription<User?> onAuthStatusChange() {
    return ref.watch(authServiceProvider).authUserChange.listen(
      (user) {
        if (user == null) {
          state = const AuthState.loggedOut();
        } else if (!user.emailVerified) {
          state = const AuthState.emailNotVerified();
        } else {
          state = const AuthState.userLoggedIn();
        }
      },
      onError: (Object e) {
        state = AuthState.error(e);
      },
    );
  }
}
