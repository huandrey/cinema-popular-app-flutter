import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkModeTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: const Color(0xff9B3320),
    secondary: Colors.white,
    tertiary: Colors.grey.shade800,
    inversePrimary: Colors.white,
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.sen(
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.w500,
      height: 1,
    ),
    headlineMedium: GoogleFonts.sen(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: GoogleFonts.sen(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: GoogleFonts.sen(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: GoogleFonts.sen(
      color: Colors.grey.shade800,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
  ),
  useMaterial3: false,
);
