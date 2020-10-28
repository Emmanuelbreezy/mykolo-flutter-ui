import 'package:flutter/material.dart';
import '../Theme/app_theme.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  //SharedPreferences prefs;

  bool _darkTheme;
  bool get darkTheme => _darkTheme;

  ThemeData _darkthemeData = darktheme;
  ThemeData _lightthemeData = lighttheme;

  ThemeData get darkthemeData => _darkthemeData;
  ThemeData get lightthemeData => _lightthemeData;

  ThemeNotifier() {
    _darkTheme = false;
  }

  toggleTheme() {
    _darkTheme = !_darkTheme;
    notifyListeners();
  }
}
