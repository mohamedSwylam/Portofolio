import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/widgets/about_me_widget.dart';
import 'package:portfolio/screens/about/widgets/install_app_button.dart';
import 'package:portfolio/screens/about/widgets/view_resume_button.dart';
import 'package:portfolio/screens/skills/skills_section.dart';

class AboutSectionDesktopView extends StatelessWidget {
  const AboutSectionDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(child: AboutMeWidget()),
            Expanded(
              child: Column(
                children: [
                  ViewResumeButton(),
                  SizedBox(height: 30),
                  InstallAppButton(),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 32),
        SkillsSection(),
      ],
    );
  }
}
