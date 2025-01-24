import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  void onChangeTheme(ThemeMode theme) {
    themeMode = theme;
    print(theme);
    notifyListeners();
  }
}
