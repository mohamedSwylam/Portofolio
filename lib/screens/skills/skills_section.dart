import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/screens/skills/widgets/skill_chip.dart';
import 'package:portfolio/screens/widgets/fading_translate_widget.dart';

import '../../resource/constants.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FadingTranslateWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text(
                'Skills',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Lottie.asset(
                Constants.muscleIcon,
                height: 30,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              SkillChip(skill: 'Flutter'),
              SkillChip(skill: 'Dart'),
              SkillChip(skill: 'Firebase'),
              SkillChip(skill: 'REST APIs'),
              SkillChip(skill: 'Git'),
              SkillChip(skill: 'UI/UX Design'),
            ],
          ),
        ],
      ),
    );
  }
}
