import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';

class FirebaseUserDetails {
  final LoginType loginType;
  final User user;

  FirebaseUserDetails({
    required this.user,
    required this.loginType,
  });

  @override
  String toString() {
    return 'UserDetails{signInType: $loginType, firebaseUser: $user}';
  }
}
