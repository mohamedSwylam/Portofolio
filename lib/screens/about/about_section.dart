import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/fading_translate_widget.dart';
import 'widgets/about_section_desktop_view.dart';
import 'widgets/about_section_mobile_view.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FadingTranslateWidget(
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isDesktop) {
            return const AboutSectionDesktopView();
          }
          return AboutSectionMobileView();
        },
      ),
    );
  }
}
