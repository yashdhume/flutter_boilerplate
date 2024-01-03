enum PrintColor {
  regular,
  black,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  grey
}

extension PrintColorExt on PrintColor {
  int get code {
    switch (this) {
      case PrintColor.regular:
        return 0;
      case PrintColor.black:
        return 30;
      case PrintColor.red:
        return 31;
      case PrintColor.green:
        return 32;
      case PrintColor.yellow:
        return 33;
      case PrintColor.blue:
        return 34;
      case PrintColor.magenta:
        return 35;
      case PrintColor.cyan:
        return 36;
      case PrintColor.grey:
        return 37;
    }
  }
}
