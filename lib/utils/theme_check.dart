import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeCheckFunctions {

  static bool isDarkMode(BuildContext buildContext)
  {
    return Theme.of(buildContext).brightness == Brightness.dark;
  }
}