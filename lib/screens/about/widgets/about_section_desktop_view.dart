import 'package:flutter/material.dart';

import '../../skills/skills_section.dart';
import 'about_me_widget.dart';
import 'install_app_button.dart';
import 'view_resume_button.dart';

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
