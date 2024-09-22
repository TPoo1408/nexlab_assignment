import 'package:flutter/material.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';

class AppTheme {
  // Base Theme
  static const _fontFamily = "Roboto";
  static const _primaryColor = AppColor.primaryColor;
  static const _appBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black,
    elevation: 0,
  );
  static const _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.white),
      elevation: WidgetStatePropertyAll(0),
    ),
  );

  // Light Theme
  static final lightTheme = ThemeData(
    fontFamily: _fontFamily,
    primaryColor: _primaryColor,
    appBarTheme: _appBarTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    scaffoldBackgroundColor: Colors.white,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: _primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColor.greyBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: _primaryColor),
      ),
    ),
  );
}
