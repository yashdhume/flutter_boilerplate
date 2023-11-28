import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';
import 'package:frontend/app/authentication/logic/error/auth_exception.dart';
import 'package:frontend/app/authentication/logic/models/firebase_user_details.dart';
import 'package:frontend/app/authentication/logic/service/auth_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService extends AuthService {
  GoogleAuthService(super.ref);

  Future<OAuthCredential> _getCredential() async {
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) throw AuthException(LoginType.google);

    final googleAuth = await googleUser.authentication;

    return GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
  }

  Future<FirebaseUserDetails> signIn() async {
    final cred = await _getCredential();
    final googleCredentials =
        await FirebaseAuth.instance.signInWithCredential(cred);
    if (googleCredentials.user == null) throw AuthException(LoginType.google);
    return FirebaseUserDetails(
      user: googleCredentials.user!,
      loginType: LoginType.google,
    );
  }
}
