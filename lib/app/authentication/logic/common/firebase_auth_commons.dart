import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/app/authentication/logic/enums/login_type.dart';

class FirebaseAuthCommons {
  static bool isEmailVerified() =>
      FirebaseAuth.instance.currentUser!.emailVerified;

  static bool checkIfProviderExists(LoginType loginType) =>
      getProviderIdIndex(loginType) != -1;

  static int getProviderIdIndex(LoginType providerId) =>
      FirebaseAuth.instance.currentUser!.providerData
          .indexWhere((i) => i.providerId == providerId.toProviderId());

  static List<LoginType> getAllProviderIds() =>
      FirebaseAuth.instance.currentUser!.providerData
          .map((e) => providerIdToLoginType(e.providerId))
          .toList();

  static LoginType getFirstProviderId() => providerIdToLoginType(
        FirebaseAuth.instance.currentUser!.providerData[0].providerId,
      );

  static LoginType providerIdToLoginType(String providerId) {
    switch (providerId) {
      case 'google.com':
        return LoginType.google;
      case 'apple.com':
        return LoginType.apple;
      case 'password':
        return LoginType.email;
      case 'phone':
        return LoginType.phone;
      default:
        throw UnimplementedError();
    }
  }
}
