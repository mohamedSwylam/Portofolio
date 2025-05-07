import 'package:flutter/material.dart';

import 'resource/app_theme.dart';
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
      theme: darkTheme,
      home: const PortfolioHomePage(),
    );
  }
}
