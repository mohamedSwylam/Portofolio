import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'about/about_section.dart';
import 'contact/contact_section.dart';
import 'projects/projects_section.dart';
import 'skills/skills_section.dart';
import 'widgets/colorful_background.dart';

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
          ColorfulBackground(),
          ResponsiveBuilder(builder: (context, sizingInformation) {
            return Scrollbar(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: sizingInformation.isDesktop ? 150 : 24),
                child: PageView(
                  scrollDirection: Axis.vertical,
                  children: [
                    AboutSection(),
                    if (!sizingInformation.isDesktop) SkillsSection(),
                    ProjectsSection(),
                    ContactSection(),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
