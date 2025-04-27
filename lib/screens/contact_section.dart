import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/widgets/social_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
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
            'Get in Touch',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Feel free to reach out for collaborations or just a friendly hello',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              SocialButton(
                icon: FontAwesomeIcons.envelope,
                url: 'mailto:modather0ali@gmail.com',
              ),
              const SizedBox(width: 16),
              SocialButton(
                icon: FontAwesomeIcons.linkedin,
                url: 'https://www.linkedin.com/in/modather-ali/',
              ),
              const SizedBox(width: 16),
              SocialButton(
                icon: FontAwesomeIcons.github,
                url: 'https://github.com/modather-ali',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
