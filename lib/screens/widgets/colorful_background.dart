import 'package:flutter/material.dart';

class ColorfulBackground extends StatelessWidget {
  const ColorfulBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0d1b2a),
            Color(0xFF1d3557),
            Color(0xFF0A3981),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
