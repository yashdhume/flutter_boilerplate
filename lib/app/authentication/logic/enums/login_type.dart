import 'package:frontend/common/extensions/string.dart';

enum LoginType { google, apple, email, phone }

extension ParseLoginType on LoginType {
  String toViewString() {
    return name.capitalize();
  }

  String toSignUpString() {
    switch (this) {
      case LoginType.google:
        return 'Sign in with Google';
      case LoginType.apple:
        return 'Sign in with Apple ';
      case LoginType.email:
        return 'Sign up with email ';
      case LoginType.phone:
        return 'Sign up with phone ';
    }
  }

  String toSignInString() {
    switch (this) {
      case LoginType.google:
        return 'Sign in with Google';
      case LoginType.apple:
        return 'Sign in with Apple ';
      case LoginType.email:
        return 'Sign in with email ';
      case LoginType.phone:
        return 'Sign in with phone ';
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
