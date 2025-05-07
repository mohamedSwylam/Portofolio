import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi, I\'m Modather',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Mobile Apps Developer',
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'I create beautiful and functional mobile applications with Flutter, I have +3 years of experience dealing with Flutter framework, Passionate about clean code and great user experiences.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              launchUrl(Uri.parse(Data.cvURL));
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              'View CV',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
