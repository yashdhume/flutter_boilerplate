import 'package:frontend/common/utils/language.dart';

class EmailValidators {
  static String? validateEmail(String? value) {
    if (value == null) return Language.text.emailCantBeEmpty;
    if (value.isEmpty) return Language.text.emailCantBeEmpty;
    final regex = RegExp(r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])');
    return !regex.hasMatch(value) ? Language.text.invalidEmail : null;
  }

  static String? validatePassword(String? value) {
    if (value == null) return Language.text.passwordCantBeEmpty;
    if (value.isEmpty) return Language.text.passwordCantBeEmpty;
    if (!RegExp('(?=.*[A-Z])').hasMatch(value)) {
      return Language.text.mustContainUpperCaseLetter;
    }
    if (!RegExp('(?=.*[a-z])').hasMatch(value)) {
      return Language.text.mustContainUpperCaseLetter;
    }
    if (!RegExp('(?=.*[0-9])').hasMatch(value)) {
      return Language.text.mustContainNumber;
    }
    if (!RegExp('(?=.*[!@#><*~])').hasMatch(value)) {
      return Language.text.mustContainSpecialChar;
    }
    if (value.length < 8) {
      return Language.text.mustContain8Chars;
    }
    return null;
  }
}
