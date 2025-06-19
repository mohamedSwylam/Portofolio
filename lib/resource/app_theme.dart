import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Rubik',
  useMaterial3: true,
  primarySwatch: Constants.primaryColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF007BFF),
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: Colors.white,
  cardColor: Colors.grey.shade100,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black87),
    bodyMedium: TextStyle(color: Colors.black87),
    titleLarge: TextStyle(color: Colors.black87),
    titleMedium: TextStyle(color: Colors.black87),
    titleSmall: TextStyle(color: Colors.black87),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black87,
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: Constants.fontFamily,
  useMaterial3: true,
  primarySwatch: Constants.primaryColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF007BFF),
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: const Color(0xFF0F0F23),
  cardColor: const Color(0xFF1A1A2E).withValues(alpha: 0.6),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    titleLarge: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
    titleSmall: TextStyle(color: Colors.white),
  ),
);
