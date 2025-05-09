import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/screens/contact/widgets/recommendations_carousel.dart';
import 'package:portfolio/screens/widgets/custom_icon_button.dart';

import '../../resource/constants.dart';
import '../widgets/fading_translate_widget.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FadingTranslateWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              const Text(
                'Recommendations',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Image.asset(
                Constants.starIcon,
                height: 40,
              ),
            ],
          ),
          const SizedBox(height: 10),
          RecommendationsCarousel(),
          const SizedBox(height: 24),
          Row(
            children: [
              const Text(
                'Get in Touch',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Lottie.asset(
                Constants.messageIcon,
                height: 50,
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            'Feel free to reach out for collaborations or just a friendly hello',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              CustomIconButton(
                icon: FontAwesomeIcons.envelope,
                url: 'mailto:modather0ali@gmail.com?subject=Hello%20Modather',
              ),
              const SizedBox(width: 16),
              CustomIconButton(
                icon: FontAwesomeIcons.linkedin,
                url: 'https://www.linkedin.com/in/ModatherAli',
              ),
              const SizedBox(width: 16),
              CustomIconButton(
                icon: FontAwesomeIcons.github,
                url: 'https://github.com/ModatherAli',
              ),
              const SizedBox(width: 16),
              CustomIconButton(
                icon: FontAwesomeIcons.whatsapp,
                url: 'https://wa.me/+201557016433?text=Hello%20Modather',
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text('Made with Flutter 💙 by Modather Ali'),
          ),
        ],
      ),
    );
  }
}
