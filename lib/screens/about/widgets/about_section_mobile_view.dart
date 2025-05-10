import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/widgets/about_me_widget.dart';
import 'package:portfolio/screens/about/widgets/install_app_button.dart';
import 'package:portfolio/screens/about/widgets/view_resume_button.dart';

class AboutSectionMobileView extends StatelessWidget {
  const AboutSectionMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AboutMeWidget(),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment:
              kIsWeb ? MainAxisAlignment.spaceAround : MainAxisAlignment.start,
          children: [
            ViewResumeButton(),
            if (kIsWeb) InstallAppButton(),
          ],
        ),
      ],
    );
  }
}
