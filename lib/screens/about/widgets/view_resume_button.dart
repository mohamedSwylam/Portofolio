import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../resource/constants.dart';

class ViewResumeButton extends StatelessWidget {
  const ViewResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return OutlinedButton(
          onPressed: () {
            launchUrl(Uri.parse(Constants.cvURL));
          },
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: sizingInformation.isDesktop ? 32 : 24,
              vertical: sizingInformation.isDesktop ? 10 : 8,
            ),
          ),
          child: Text(
            'View CV',
            style: TextStyle(
              fontSize: sizingInformation.isDesktop ? 18 : 16,
            ),
          ),
        );
      },
    );
  }
}
