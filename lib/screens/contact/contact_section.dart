import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/screens/contact/widgets/contact_info.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../resource/constants.dart';
import '../../resource/theme_provider.dart';
import '../widgets/fading_translate_widget.dart';
import 'widgets/contact_form.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return FadingTranslateWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text(
                        'Get in Touch',
                        style: TextStyle(
                          fontSize: sizingInformation.isDesktop ? 24 : 20,
                          fontWeight: FontWeight.bold,
                          color: themeProvider.textColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Lottie.asset(
                        Constants.messageIcon,
                        height: sizingInformation.isDesktop ? 50 : 40,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Feel free to reach out for collaborations or just a friendly hello',
                    style: TextStyle(
                      fontSize: sizingInformation.isDesktop ? 18 : 16,
                      color: themeProvider.textColor,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Contact Form
                  const ContactForm(),

                  // Add the Contact Info Grid here
                  const ContactInfoGrid(),

                  const SizedBox(height: 20),

                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      vertical: sizingInformation.isDesktop ? 20 : 16,
                    ),
                    child: Text(
                      'Made with Flutter 💙 by Swylam',
                      style: TextStyle(
                        color: themeProvider.textColor,
                        fontSize: sizingInformation.isDesktop ? 16 : 14,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
