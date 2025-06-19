import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../resource/theme_provider.dart';

class SkillChip extends StatelessWidget {
  final String skill;
  final String icon;
  final Color? backgroundColor;
  final Color? textColor;
  final ThemeProvider themeProvider;
  final SizingInformation sizingInformation;

  const SkillChip({
    super.key,
    required this.skill,
    required this.icon,
    this.backgroundColor,
    this.textColor,
    required this.themeProvider,
    required this.sizingInformation,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Image.asset(
        icon,
        height: sizingInformation.isDesktop ? 20 : 18,
        width: sizingInformation.isDesktop ? 20 : 18,
        errorBuilder: (context, error, stackTrace) {
          return Icon(
            Icons.code,
            size: sizingInformation.isDesktop ? 20 : 18,
            color: textColor ?? themeProvider.accentColor,
          );
        },
      ),
      label: Text(
        skill,
        style: TextStyle(
          color: textColor ?? themeProvider.accentColor,
          fontSize: sizingInformation.isDesktop ? 14 : 12,
        ),
      ),
      backgroundColor:
          backgroundColor ?? themeProvider.accentColor.withValues(alpha: 0.2),
    );
  }
}
