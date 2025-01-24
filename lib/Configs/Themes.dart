import 'package:flutter/material.dart';
import 'package:learn_provider/Configs/Colors.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  // scaffoldBackgroundColor: Colors.deepPurple.shade100,
  colorScheme: ColorScheme.light(
    surface: lightBgColor,
    onSurface: lightFontColor,
    primaryContainer: lightContainer,
    primary: lightPrimary,
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: lightBgColor,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      fontSize: 24,
      letterSpacing: 2,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  // scaffoldBackgroundColor: Colors.deepPurple.shade100,
  colorScheme: ColorScheme.dark(
    surface: darkContainer,
    onSurface: darkFontColor,
    primaryContainer: darkContainer,
    primary: darkPrimary,
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: darkBgColor,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      fontSize: 24,
      letterSpacing: 2,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
);
