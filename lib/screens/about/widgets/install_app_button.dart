import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../resource/constants.dart';
import '../../../services/helper_services.dart';

class InstallAppButton extends StatelessWidget {
  const InstallAppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return OutlinedButton(
          onPressed: () {
            HelperServices.lunchUrl(Constants.apkURL);
          },
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: sizingInformation.isDesktop ? 32 : 24,
              vertical: sizingInformation.isDesktop ? 10 : 8,
            ),
          ),
          child: Text(
            'Install App',
            style: TextStyle(
              fontSize: sizingInformation.isDesktop ? 18 : 16,
            ),
          ),
        );
      },
    );
  }
}
