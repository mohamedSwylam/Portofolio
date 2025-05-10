import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'about_me_widget.dart';
import 'install_app_button.dart';
import 'view_resume_button.dart';

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
