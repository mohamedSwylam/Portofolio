import 'package:flutter/material.dart';
import 'package:portfolio/screens/skills/widgets/skill_chip.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
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
