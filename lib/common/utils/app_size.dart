import 'package:flutter/widgets.dart';

class AppSize {
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width *
        MediaQuery.of(context).devicePixelRatio;
  }

  static double height(
    BuildContext context, {
    bool safeArea = false,
    bool safeAreaTopOnly = false,
    bool safeAreaBottomOnly = false,
  }) {
    final height = MediaQuery.of(context).size.height *
        MediaQuery.of(context).devicePixelRatio;
    final padding = MediaQuery.of(context).padding;
    if (safeArea) {
      return height - padding.top - padding.bottom;
    } else if (safeAreaTopOnly) {
      return height - padding.top;
    } else if (safeAreaBottomOnly) {
      return height - padding.bottom;
    } else {
      return height;
    }
  }
}
