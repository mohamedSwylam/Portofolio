import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/widgets/custom_icon_button.dart';

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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'Recommendations',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Placeholder(
            fallbackHeight: MediaQuery.of(context).size.height * 0.4,
            fallbackWidth: MediaQuery.of(context).size.width,
          ),
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
              CustomIconButton(
                icon: FontAwesomeIcons.envelope,
                url: 'mailto:modather0ali@gmail.com',
              ),
              const SizedBox(width: 16),
              CustomIconButton(
                icon: FontAwesomeIcons.linkedin,
                url: 'https://www.linkedin.com/in/modather-ali',
              ),
              const SizedBox(width: 16),
              CustomIconButton(
                icon: FontAwesomeIcons.github,
                url: 'https://github.com/modather-ali',
              ),
              const SizedBox(width: 16),
              CustomIconButton(
                icon: FontAwesomeIcons.whatsapp,
                url: 'https://wa.me/+201557016433',
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text('Made with Flutter 💙 by Modather Ali'),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
