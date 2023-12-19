class EmailValidators {
  static String? validateEmail(String? value) {
    if (value == null) return 'Email cant be empty';
    if (value.isEmpty) return 'Email cant be empty';
    final regex = RegExp(r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])');
    return !regex.hasMatch(value) ? 'Enter a valid email address' : null;
  }

  static String? validatePassword(String? value) {
    if (value == null) return 'Password cant be empty';
    if (value.isEmpty) return 'Password cant be empty';
    if (!RegExp('(?=.*[A-Z])').hasMatch(value)) {
      return 'Must contain at least one uppercase letter';
    }
    if (!RegExp('(?=.*[a-z])').hasMatch(value)) {
      return 'Must contain at least one lowercase letter)';
    }
    if (!RegExp('(?=.*[0-9])').hasMatch(value)) {
      return 'Must contain at least one number';
    }
    if (!RegExp('(?=.*[!@#><*~])').hasMatch(value)) {
      return 'Must contain at least one special character';
    }
    if (value.length < 8) {
      return 'Must be at least 8 characters long';
    }
    return null;
  }
}
