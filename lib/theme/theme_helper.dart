import 'package:flutter/material.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();

ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
class ThemeHelper {
  /// Returns the current theme data.
  ThemeData _getThemeData() {
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: ColorSchemes.lightCodeColorScheme,
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => LightCodeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

class LightCodeColors {
  // App Colors
  Color get white => Color(0xFFFFFFFF);

  Color get black => Color(0xFF1E1E1E);

  Color get gray400 => Color(0xFF9CA3AF);

  // Additional Colors
  Color get whiteCustom => Colors.white;

  Color get blackCustom => Colors.black;

  Color get transparentCustom => Colors.transparent;

  Color get greyCustom => Colors.grey;

  Color get colorFF1817 => Color(0xFF18171C);

  Color get colorFFA901 => Color(0xFFA90140);

  Color get colorFF5501 => Color(0xFF550120);

  Color get colorFF2F2F => Color(0xFF2F2F39);

  Color get colorFF6161 => Color(0xFF61616B);

  Color get colorFF4545 => Color(0xFF45454F);

  Color get colorFFEADD => Color(0xFFEADDFF);

  Color get colorFF2C2D => Color(0xFF2C2D31);

  Color get colorFF2021 => Color(0xFF202126);

  Color get grey200 => Colors.grey.shade200;

  Color get grey100 => Colors.grey.shade100;
}
