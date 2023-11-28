import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';
import 'package:frontend/app/authentication/logic/error/auth_exception.dart';
import 'package:frontend/app/authentication/logic/models/firebase_user_details.dart';
import 'package:frontend/app/authentication/logic/service/apple_auth_service.dart';
import 'package:frontend/app/authentication/logic/states/third_party_auth_state/third_party_auth_state.dart';

final appleAuthNotifier =
    StateNotifierProvider<AppleAuthStateNotifier, ThirdPartyAuthState>(
  AppleAuthStateNotifier.new,
);

class AppleAuthStateNotifier extends StateNotifier<ThirdPartyAuthState> {
  final Ref ref;

  AppleAuthStateNotifier(this.ref) : super(const ThirdPartyAuthState.initial());
  late final AppleAuthService service = AppleAuthService(ref);

  void _firebaseError(FirebaseAuthException e) {
    if (e.code == 'user-not-found') {
      const ThirdPartyAuthState.nullUser();
    } else {
      state = ThirdPartyAuthState.invalidVerification(e, 'error');
    }
  }

  Future<void> signIn() async {
    state = const ThirdPartyAuthState.loading('Signing In');
    try {
      final userCredential = await service.signIn();
      state = ThirdPartyAuthState.success(
        FirebaseUserDetails(
          user: userCredential.user,
          loginType: LoginType.apple,
        ),
      );
    } on FirebaseAuthException catch (e) {
      _firebaseError(e);
    } on AuthException catch (_) {
      state = const ThirdPartyAuthState.nullUser();
    } catch (e, trace) {
      state = ThirdPartyAuthState.unknownError(e, trace);
    }
  }
}
