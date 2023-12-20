import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';
import 'package:frontend/app/authentication/logic/error/auth_exception.dart';
import 'package:frontend/app/authentication/logic/models/firebase_user_details.dart';
import 'package:frontend/app/authentication/logic/service/google_auth_service.dart';
import 'package:frontend/app/authentication/logic/states/third_party_auth_state/third_party_auth_state.dart';
import 'package:frontend/common/utils/language.dart';

final googleAuthProvider =
    StateNotifierProvider<GoogleAuthStateNotifier, ThirdPartyAuthState>(
  GoogleAuthStateNotifier.new,
);

class GoogleAuthStateNotifier extends StateNotifier<ThirdPartyAuthState> {
  final Ref ref;

  GoogleAuthStateNotifier(this.ref)
      : super(const ThirdPartyAuthState.initial());
  late final GoogleAuthService service = GoogleAuthService(ref);

  void _firebaseError(FirebaseAuthException e) {
    if (e.code == 'user-not-found') {
      const ThirdPartyAuthState.nullUser();
    } else {
      state = ThirdPartyAuthState.invalidVerification(
        e,
        Language.text.genericErrorMessage,
      );
    }
  }

  Future<void> signIn() async {
    state = ThirdPartyAuthState.loading(Language.text.signingIn);
    try {
      final userCredential = await service.signIn();
      state = ThirdPartyAuthState.success(
        FirebaseUserDetails(
          user: userCredential.user,
          loginType: LoginType.google,
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
