import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../resource/constants.dart';

class ViewResumeButton extends StatelessWidget {
  const ViewResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        launchUrl(Uri.parse(Constants.cvURL));
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
      ),
      child: const Text(
        'View CV',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
