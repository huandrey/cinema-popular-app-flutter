import 'package:cinema_popular/theme/dark_mode_theme.dart';
import 'package:cinema_popular/theme/light_mode_theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = darkModeTheme;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkModeTheme;

  set themeData(ThemeData themeData) {
    _themeData = themeData;

    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightModeTheme) {
      themeData = darkModeTheme;
    } else {
      themeData = lightModeTheme;
    }
  }
}
