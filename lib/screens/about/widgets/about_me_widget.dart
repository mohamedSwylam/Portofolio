import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio/screens/about/widgets/view_resume_button.dart';
import 'package:portfolio/screens/widgets/custom_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../resource/constants.dart';
import '../../../resource/theme_provider.dart';
import 'job_title.dart';
import 'widget_circular_animator.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // Avatar and texts stacked vertically, aligned to start
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Avatar aligned to start with responsive size
                    WidgetCircularAnimator(
                      size: sizingInformation.isDesktop ? 250 : 200,
                      innerColor: Colors.blueAccent,
                      outerColor: Colors.lightBlueAccent,
                      child: Image.asset(Constants.avatarImage),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Text content starts here
                AnimatedBuilder(
                  animation: themeProvider,
                  builder: (context, child) {
                    return AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Hi, I\'m Mohamed Swylam',
                          textStyle: TextStyle(
                            fontSize: sizingInformation.isDesktop ? 30 : 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: Constants.fontFamily,
                            color: themeProvider.textColor,
                          ),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      totalRepeatCount: 1,
                      isRepeatingAnimation: false,
                      key: ValueKey(themeProvider.isDarkTheme),
                    );
                  },
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    Icon(
                      Icons.work,
                      color: themeProvider.textColor,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontSize: sizingInformation.isDesktop ? 20 : 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: Constants.fontFamily,
                        color: themeProvider.textColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: themeProvider.textColor,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Maadi, Cairo, Egypt',
                      style: TextStyle(
                        fontSize: sizingInformation.isDesktop ? 20 : 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: Constants.fontFamily,
                        color: themeProvider.textColor,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),
                JobTitle(),
                const SizedBox(height: 24),

                // Get in touch
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
                    GestureDetector(
                      onTap: () async {
                        final Uri whatsappUrl =
                            Uri.parse('https://wa.me/201098570050');
                        if (await canLaunchUrl(whatsappUrl)) {
                          await launchUrl(whatsappUrl);
                        } else {
                          // Handle error - WhatsApp not installed or URL can't be launched
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Could not open WhatsApp')),
                          );
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(
                            sizingInformation.isDesktop ? 12 : 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Let\'s talk',
                          style: TextStyle(
                            fontSize: sizingInformation.isDesktop ? 16 : 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
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
                const SizedBox(height: 15),

                // Social media buttons with responsive spacing
                Wrap(
                  spacing: sizingInformation.isDesktop ? 16 : 12,
                  runSpacing: sizingInformation.isDesktop ? 16 : 12,
                  children: [
                    CustomIconButton(
                      icon: FontAwesomeIcons.envelope,
                      url:
                          'mailto:mohamedswylam5@gmail.com?subject=Hello%20swylam',
                    ),
                    CustomIconButton(
                      icon: FontAwesomeIcons.linkedin,
                      url: 'https://www.linkedin.com/in/mohamedswylam9/',
                    ),
                    CustomIconButton(
                      icon: FontAwesomeIcons.github,
                      url: 'https://github.com/mohamedSwylam',
                    ),
                    CustomIconButton(
                      icon: FontAwesomeIcons.whatsapp,
                      url: 'https://wa.me/+201098570050?text=Hello%20swylam',
                    ),
                    ViewResumeButton(),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
