import 'package:flutter/material.dart';

class ScreenUtils {
  ///  🔹 Get screen height
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  /// 🔹 Get screen width
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  /// 🔹 Get safe area height (without status bar & bottom padding)
  static double safeHeight(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return MediaQuery.of(context).size.height - padding.top - padding.bottom;
  }

  /// 🔹 Get safe area width
  static double safeWidth(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return MediaQuery.of(context).size.width - padding.left - padding.right;
  }
}
