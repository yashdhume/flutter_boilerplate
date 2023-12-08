import 'package:firebase_auth/firebase_auth.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class TokenService {
  static bool isExpiring(String token) {
    return JwtDecoder.getExpirationDate(token)
            .difference(DateTime.now())
            .inMinutes <
        5;
  }

  static Future<String?> getToken({bool forceRefresh = false}) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) return null;
    if (forceRefresh) {
      return currentUser.getIdToken(true);
    }
    var token = await currentUser.getIdToken();
    if (token == null || isExpiring(token)) {
      token = await currentUser.getIdToken(true);
    }
    return token;
  }
}
