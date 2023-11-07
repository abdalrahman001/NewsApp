import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui';

class DarkThemePreference {
  static const THEME_STATUS = "THEMESTATUS";

  static setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME_STATUS) ?? false;
  }
}
class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    DarkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}


class Styles {
  static ThemeData darkThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.red,
      primaryColor: Colors.black,
      backgroundColor: Colors.black,
      indicatorColor: Color(0xff0E1D36),
      hintColor: Color(0xff280C0B),
      highlightColor: Color(0xff372901),
      hoverColor: Color(0xff3A3A3B),
      focusColor: Color(0xff0B2512),
      disabledColor: Colors.grey,
      cardColor: Color(0xFF151515),
      canvasColor: Colors.black,
      brightness: Brightness.dark,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.dark(),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
    );
  }

  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.red,
      primaryColor: Colors.white,
      backgroundColor: Color(0xffF1F5FB),
      indicatorColor: Color(0xffCBDCF8),
      hintColor: Color(0xffEECED3),
      highlightColor: Color(0xffFCE192),
      hoverColor: Color(0xff4285F4),
      focusColor: Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      cardColor: Colors.white,
      canvasColor: Colors.grey[50],
      brightness: Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.light(),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
    );
  }
}
