import 'package:flutter/services.dart';

enum Vibration { light, medium, heavy, click, regular, none }

extension VibrationExt on Vibration {
  void vibrate() {
    switch (this) {
      case Vibration.regular:
        HapticFeedback.vibrate();
      case Vibration.light:
        HapticFeedback.lightImpact();
      case Vibration.medium:
        HapticFeedback.mediumImpact();
      case Vibration.heavy:
        HapticFeedback.heavyImpact();
      case Vibration.click:
        HapticFeedback.selectionClick();
      case Vibration.none:
        return;
    }
  }
}
