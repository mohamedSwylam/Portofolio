import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../resource/constants.dart';

class JobTitle extends StatelessWidget {
  const JobTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        ColorizeAnimatedText(
          'Mobile Apps Developer',
          textStyle: TextStyle(
            fontSize: 24,
            fontFamily: Constants.fontFamily,
            fontWeight: FontWeight.w700,
          ),
          colors: [
            Colors.blue,
            Colors.yellow,
            Colors.red,
            Colors.purple,
          ],
        ),
      ],
      isRepeatingAnimation: true,
      repeatForever: true,
    );
  }
}
