import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A helper class for managing text styles in the application
class TextStyleHelper {
  static TextStyleHelper? _instance;

  TextStyleHelper._();

  static TextStyleHelper get instance {
    _instance ??= TextStyleHelper._();
    return _instance!;
  }

  // Display Styles
  // Large text styles typically used for headers and hero elements

  TextStyle get display45Lobster => TextStyle(
    fontSize: 45.fSize,
    fontFamily: 'Lobster',
    color: appTheme.whiteCustom,
  );

  // Title Styles
  // Medium text styles for titles and subtitles

  TextStyle get title20RegularRoboto => TextStyle(
    fontSize: 20.fSize,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
  );

  TextStyle get title16Bold => TextStyle(
    fontSize: 16.fSize,
    fontWeight: FontWeight.bold,
    color: appTheme.whiteCustom,
  );

  TextStyle get title16 =>
      TextStyle(fontSize: 16.fSize, color: appTheme.whiteCustom);

  // Body Styles
  // Standard text styles for body content

  TextStyle get body15 =>
      TextStyle(fontSize: 14.5.fSize, color: appTheme.whiteCustom);

  TextStyle get body15Bold => TextStyle(
    fontSize: 15.fSize,
    fontWeight: FontWeight.bold,
    color: appTheme.whiteCustom,
  );

  TextStyle get body14Medium => TextStyle(
    fontSize: 14.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.colorFF6161,
  );

  TextStyle get body13Bold => TextStyle(
    fontSize: 13.fSize,
    fontWeight: FontWeight.bold,
    color: appTheme.blackCustom,
  );

  TextStyle get body13 => TextStyle(fontSize: 13.fSize);

  // Label Styles
  // Small text styles for labels, captions, and hints

  TextStyle get label11 => TextStyle(fontSize: 11.fSize);
}
