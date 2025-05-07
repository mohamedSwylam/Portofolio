import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Rubik',
  useMaterial3: true,
  primarySwatch: Constants.primaryColor,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade100,
  ),
  scaffoldBackgroundColor: Colors.grey.shade100,
);

ThemeData darkTheme = FlexThemeData.dark(
  fontFamily: Constants.fontFamily,
  scheme: FlexScheme.blue,
  scaffoldBackground: Constants.primaryDarkColor,
);
