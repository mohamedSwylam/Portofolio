import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String skill;
  final String icon;
  const SkillChip({
    super.key,
    required this.skill,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Image.asset(
        icon,
        height: 20,
        width: 20,
      ),
      label: Text(skill),
      backgroundColor: Colors.blue.withOpacity(0.2),
      labelStyle: const TextStyle(color: Colors.blue),
    );
  }
}
