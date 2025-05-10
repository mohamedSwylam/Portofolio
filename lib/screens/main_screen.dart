import 'package:flutter/material.dart';

import 'about/about_section.dart';
import 'contact/contact_section.dart';
import 'projects/projects_section.dart';
import 'skills/skills_section.dart';
import 'widgets/colored_back_ground.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ColoredBackGround(),
          Scrollbar(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: PageView(
                scrollDirection: Axis.vertical,
                children: [
                  AboutSection(),
                  SkillsSection(),
                  ProjectsSection(),
                  ContactSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
