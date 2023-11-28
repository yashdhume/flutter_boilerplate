import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';
import 'package:frontend/app/authentication/logic/error/auth_exception.dart';
import 'package:frontend/app/authentication/logic/models/firebase_user_details.dart';
import 'package:frontend/app/authentication/logic/service/auth_service.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleAuthService extends AuthService {
  AppleAuthService(super.ref);

  String _sha256OfString(String input) =>
      sha256.convert(utf8.encode(input)).toString();

  Future<AuthorizationCredentialAppleID> _getAppleIDCredential(
    String rawNonce,
  ) async {
    return SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: _sha256OfString(rawNonce),
    );
  }

  Future<OAuthCredential> _getCredential() async {
    final rawNonce = generateNonce();
    final appleCred = await _getAppleIDCredential(rawNonce);
    final oAuthCred = OAuthProvider(LoginType.apple.toProviderId()).credential(
      idToken: appleCred.identityToken,
      accessToken: appleCred.authorizationCode,
      rawNonce: rawNonce,
    );
    return oAuthCred;
  }

  Future<FirebaseUserDetails> signIn() async {
    final userCredentials = await FirebaseAuth.instance
        .signInWithCredential(await _getCredential());
    if (userCredentials.user == null) throw AuthException(LoginType.apple);
    return FirebaseUserDetails(
      user: userCredentials.user!,
      loginType: LoginType.apple,
    );
  }
}
