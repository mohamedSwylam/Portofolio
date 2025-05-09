import 'package:flutter/material.dart';

import 'about/about_section.dart';
import 'contact/contact_section.dart';
import 'projects/projects_section.dart';
import 'skills/skills_section.dart';
import 'widgets/colored_back_ground.dart';

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({super.key});

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
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
