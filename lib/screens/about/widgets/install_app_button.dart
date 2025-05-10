import 'package:flutter/material.dart';
import 'package:portfolio/resource/constants.dart';
import 'package:portfolio/services/helper_services.dart';

class InstallAppButton extends StatelessWidget {
  const InstallAppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        HelperServices.lunchUrl(Constants.apkURL);
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
      ),
      child: const Text(
        'Install App',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
