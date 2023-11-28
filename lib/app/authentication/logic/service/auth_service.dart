import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final Ref ref;

  AuthService(this.ref);

  final FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get authUserChange => auth.userChanges();

  Future<void> reload() async {
    if (auth.currentUser != null) {
      await auth.currentUser!.reload();
    }
  }

  Future<void> signOut() async {
    await GoogleSignIn().signOut();
    await auth.signOut();
  }
}
