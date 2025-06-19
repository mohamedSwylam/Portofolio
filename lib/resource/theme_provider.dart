import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkTheme = true;

  bool get isDarkTheme => _isDarkTheme;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  // Theme-aware colors
  Color get backgroundColor =>
      _isDarkTheme ? const Color(0xFF0F0F23) : Colors.white;
  Color get textColor => _isDarkTheme ? Colors.white : Colors.black87;
  Color get navBarColor =>
      _isDarkTheme ? const Color(0xFF1A1A2E) : Colors.white;
  Color get accentColor => const Color(0xFF007BFF);
  Color get cardColor => _isDarkTheme
      ? const Color(0xFF1A1A2E).withValues(alpha: 0.6)
      : Colors.grey.shade100;
  Color get secondaryTextColor =>
      _isDarkTheme ? Colors.white.withValues(alpha: 0.7) : Colors.black54;
  Color get borderColor => _isDarkTheme
      ? const Color(0xFF007BFF).withValues(alpha: 0.3)
      : Colors.grey.shade300;
}
