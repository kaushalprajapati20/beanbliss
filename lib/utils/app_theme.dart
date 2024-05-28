import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,

      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.dark(background: Colors.white,brightness: Brightness.light)

  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark(background: Colors.black,brightness: Brightness.dark)

  );
}