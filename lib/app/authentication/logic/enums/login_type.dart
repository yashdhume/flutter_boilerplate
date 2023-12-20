import 'package:frontend/common/extensions/string.dart';
import 'package:frontend/common/utils/language.dart';

enum LoginType { google, apple, email, phone }

extension ParseLoginType on LoginType {
  String toViewString() {
    return name.capitalize();
  }

  String toSignInString() {
    switch (this) {
      case LoginType.google:
        return Language.text.signInWithGoogle;
      case LoginType.apple:
        return Language.text.signInWithApple;
      case LoginType.email:
        return Language.text.signInWithEmail;
      case LoginType.phone:
        return Language.text.signInWithPhone;
    }
  }

  String toProviderId() {
    switch (this) {
      case LoginType.google:
        return 'google.com';
      case LoginType.apple:
        return 'apple.com';
      case LoginType.email:
        return 'password';
      case LoginType.phone:
        return 'phone';
    }
  }
}
