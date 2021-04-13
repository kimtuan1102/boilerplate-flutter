import 'package:flutter/material.dart';

import 'font_family.dart';

class AppTheme {
  static ThemeData themeLight = new ThemeData(
      fontFamily: FontFamily.productSans,
      brightness: Brightness.light,
      primaryColor: Colors.orange[500],
      primaryColorBrightness: Brightness.light,
      accentColor: Colors.orange[500],
      accentColorBrightness: Brightness.light
  );

  static ThemeData themeDark = new ThemeData(
    fontFamily: FontFamily.productSans,
    brightness: Brightness.dark,
    primaryColor: Colors.orange[500],
    primaryColorBrightness: Brightness.dark,
    accentColor: Colors.orange[500],
    accentColorBrightness: Brightness.dark,
  );
}