import 'dart:convert';

extension StringExt on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }

  Map<String, dynamic> toMap() {
    final val = jsonDecode(jsonEncode(this));
    return jsonDecode(val.toString()) as Map<String, dynamic>;
  }

  String capitalize() =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  bool get isDate {
    if (isEmpty) {
      return false;
    }
    final regex = RegExp(
      r'''
    ^(
      (?:(?:31[\/\-\.](?:0?[13578]|1[02]))[\/\-\.]|  
      (?:(?:29|30)[\/\-\.](?:0?[13-9]|1[0-2])[\/\-\.]))  
      (?:(?:1[6-9]|[2-9]\d)?\d{2})
    )$| 

    ^(?:29[\/\-\.]0?2[\/\-\.]  
      (?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|
      (?:(?:16|[2468][048]|[3579][26])00)))
    )$|  

    ^(?:0?[1-9]|1\d|2[0-8])[\/\-\.]  
      (?:(?:0?[1-9])|(?:1[0-2]))[\/\-\.]  
      (?:(?:1[6-9]|[2-9]\d)?\d{2}) 
    $
    ''',
      multiLine: true,
      caseSensitive: false,
    );

    if (regex.hasMatch(this)) {
      return true;
    }
    try {
      DateTime.parse(this);
      return true;
    } on FormatException {
      return false;
    }
  }

  bool get isUrl {
    if (isEmpty) {
      return false;
    }
    final regex = RegExp(
      r'''
    (https?://)?                  
    (www\.)?                      
    [a-zA-Z0-9@:%._+~#=]{2,256}  
    \.[a-z]{2,6}                  
    \b                           
    ([-a-zA-Z0-9@:%_+.~#?&//=]*)  
  ''',
      multiLine: true,
    );
    return regex.hasMatch(this);
  }

  bool get isMail {
    if (isEmpty) {
      return false;
    }
    final regex = RegExp(r"(^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$)");
    return regex.hasMatch(this);
  }

  bool get isStrongPassword {
    if (isEmpty) {
      return false;
    }
    final regex = RegExp(
      '^'
      '(?=.*[A-Z])'
      r'(?=.*[!@#$&*])'
      '(?=.*[0-9])'
      '(?=.*[a-z])'
      '.{8,100}'
      r'$',
      multiLine: true,
    );
    return regex.hasMatch(this);
  }
}

extension StringNullExt on String? {
  bool get isNull {
    return this == null;
  }

  bool get isNotNull {
    return isNull == false;
  }

  int? parseInt() {
    if (isNotNull) {
      return int.parse(this!);
    }
    return null;
  }
}
