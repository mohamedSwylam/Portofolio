import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'screens/portfolio_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modather Portfolio',
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.dark(
        fontFamily: 'Rubik',
        scheme: FlexScheme.blue,
        scaffoldBackground: const Color(0xFF1A1A2E),
      ),
      home: const PortfolioHomePage(),
    );
  }
}
