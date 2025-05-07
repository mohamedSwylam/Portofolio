import 'package:flutter/material.dart';

import 'about/about_section.dart';
import 'contact/contact_section.dart';
import 'projects/projects_section.dart';
import 'skills/skills_section.dart';

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutSection(),
            SkillsSection(),
            ProjectsSection(),
            ContactSection(),
            const SizedBox(height: 10),
            Text('Made with Flutter 💙 by Modather Ali'),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
