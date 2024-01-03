import 'package:frontend/common/enums/print_color.dart';

enum PrintType { regular, debug, info, warning, error, wtf }

extension PrintTypeExtension on PrintType {
  String get emoji {
    switch (this) {
      case PrintType.regular:
        return '';
      case PrintType.debug:
        return '🐛';
      case PrintType.info:
        return 'ℹ️';
      case PrintType.warning:
        return '⚠️';
      case PrintType.error:
        return '🚨';
      case PrintType.wtf:
        return '🤬';
    }
  }

  PrintColor get color {
    switch (this) {
      case PrintType.regular:
        return PrintColor.regular;
      case PrintType.debug:
        return PrintColor.blue;
      case PrintType.info:
        return PrintColor.cyan;
      case PrintType.warning:
        return PrintColor.yellow;
      case PrintType.error:
        return PrintColor.red;
      case PrintType.wtf:
        return PrintColor.red;
    }
  }
}
