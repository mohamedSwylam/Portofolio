import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio/screens/skills/widgets/skill_chip.dart';
import 'package:portfolio/screens/widgets/fading_translate_widget.dart';

import '../../modules/skill.dart';
import '../../resource/constants.dart';
import '../../resource/theme_provider.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return FadingTranslateWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Skills',
                        style: TextStyle(
                          fontSize: sizingInformation.isDesktop ? 28 : 24,
                          fontWeight: FontWeight.bold,
                          color: themeProvider.textColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Lottie.asset(
                        Constants.muscleIcon,
                        height: sizingInformation.isDesktop ? 30 : 25,
                      ),
                    ],
                  ),
                  SizedBox(height: sizingInformation.isDesktop ? 24 : 20),
                  Wrap(
                    spacing: sizingInformation.isDesktop ? 16 : 12,
                    runSpacing: sizingInformation.isDesktop ? 16 : 12,
                    children: [
                      ...skills
                          .map(
                            (skill) => SkillChip(
                              skill: skill.name,
                              icon: skill.icon,
                              themeProvider: themeProvider,
                              sizingInformation: sizingInformation,
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
