import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';
import 'package:frontend/app/authentication/logic/error/auth_exception.dart';
import 'package:frontend/app/authentication/logic/models/firebase_user_details.dart';
import 'package:frontend/app/authentication/logic/service/email_auth_service.dart';
import 'package:frontend/app/authentication/logic/states/email/email_auth_state.dart';
import 'package:frontend/common/utils/language.dart';

final emailAuthProvider =
    StateNotifierProvider<EmailAuthStateNotifier, EmailAuthState>(
  EmailAuthStateNotifier.new,
);

class EmailAuthStateNotifier extends StateNotifier<EmailAuthState> {
  final Ref ref;

  EmailAuthStateNotifier(this.ref) : super(const EmailAuthState.initial());
  late final EmailAuthService service = EmailAuthService(ref);

  void _invalidPassword(
    FirebaseAuthException e,
    String message,
  ) =>
      state = EmailAuthState.invalidPassword(e, message);

  void _invalidEmail(
    FirebaseAuthException e,
    String message,
  ) =>
      state = EmailAuthState.invalidEmail(e, message);

  void _firebaseError(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      _invalidPassword(e, Language.text.weakPassword);
    } else if (e.code == 'wrong-password') {
      _invalidPassword(e, Language.text.wrongPassword);
    } else if (e.code == 'email-already-in-use') {
      _invalidEmail(e, Language.text.emailAlreadyInUse);
    } else if (e.code == 'invalid-email') {
      _invalidEmail(e, Language.text.invalidEmail);
    } else if (e.code == 'user-not-found') {
      _invalidEmail(e, Language.text.userNotFound);
    } else {
      state = EmailAuthState.invalidVerification(
        e,
        Language.text.genericErrorMessage,
      );
    }
  }

  Future<void> signIn(String email, String password) async {
    state = EmailAuthState.loading(Language.text.signingIn);
    try {
      final userCredential = await service.signIn(email, password);
      if (userCredential.user == null) {
        state = const EmailAuthState.nullUser();
        throw AuthException(LoginType.email);
      }
      state = EmailAuthState.success(
        FirebaseUserDetails(
          user: userCredential.user!,
          loginType: LoginType.email,
        ),
      );
    } on FirebaseAuthException catch (e) {
      _firebaseError(e);
    } catch (e, trace) {
      state = EmailAuthState.unknownError(e, trace);
    }
  }

  Future<void> signUp(String email, String password) async {
    state = EmailAuthState.loading(Language.text.signingUp);
    try {
      final userCredential = await service.signUp(email, password);
      if (userCredential.user == null) {
        state = const EmailAuthState.nullUser();
        throw AuthException(LoginType.email);
      }
      state = EmailAuthState.success(
        FirebaseUserDetails(
          user: userCredential.user!,
          loginType: LoginType.email,
        ),
      );
    } on FirebaseAuthException catch (e) {
      _firebaseError(e);
    } on AuthException catch (_) {
      state = const EmailAuthState.nullUser();
    } catch (e, trace) {
      state = EmailAuthState.unknownError(e, trace);
    }
  }
}
