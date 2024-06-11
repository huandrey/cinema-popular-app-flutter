import 'package:flutter/material.dart';

ThemeData lightModeTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    // primary: const Color(0xffec395e),
    primary: const Color(0xff9B3320),
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Colors.grey.shade600,
        displayColor: Colors.white,
      ),
);
