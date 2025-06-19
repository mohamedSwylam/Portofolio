import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../resource/constants.dart';
import '../../../resource/theme_provider.dart';

class JobTitle extends StatelessWidget {
  const JobTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return AnimatedBuilder(
              animation: themeProvider,
              builder: (context, child) {
                return AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Mobile Apps Developer',
                      textStyle: TextStyle(
                        fontSize: sizingInformation.isDesktop ? 24 : 20,
                        fontFamily: Constants.fontFamily,
                        fontWeight: FontWeight.w700,
                      ),
                      colors: [
                        themeProvider.accentColor,
                        themeProvider.accentColor.withValues(alpha: 0.8),
                        themeProvider.accentColor.withValues(alpha: 0.6),
                        themeProvider.accentColor.withValues(alpha: 0.4),
                      ],
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                );
              },
            );
          },
        );
      },
    );
  }
}
