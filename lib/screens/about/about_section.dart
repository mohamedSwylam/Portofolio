import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../resource/constants.dart';
import 'widgets/job_title.dart';
import 'widgets/widget_circular_animator.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              WidgetCircularAnimator(
                size: 120,
                innerColor: Colors.blueAccent,
                outerColor: Colors.lightBlueAccent,
                child: Image.asset(Constants.avatarImage),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Hi, I\'m Modather',
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: Constants.fontFamily,
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 100),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          JobTitle(),
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
              launchUrl(Uri.parse(Constants.cvURL));
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
