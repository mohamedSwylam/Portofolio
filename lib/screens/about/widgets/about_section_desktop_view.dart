import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/resource/theme_provider.dart';

import 'about_me_widget.dart';

class AboutSectionDesktopView extends StatelessWidget {
  const AboutSectionDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(child: AboutMeWidget()),
                const SizedBox(width: 32),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 120,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          StatAnimatedText(
                            countText: '+3',
                            description: 'Years\nExperience',
                            themeProvider: themeProvider,
                          ),
                          StatAnimatedText(
                            countText: '+13',
                            description: 'Projects\nCompleted',
                            themeProvider: themeProvider,
                          ),
                          StatAnimatedText(
                            countText: '+30',
                            description: 'Happy\nClients',
                            themeProvider: themeProvider,
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      Text(
                        "I'm Mohamed Swylam, a passionate Flutter Developer with hands-on experience in building scalable, high-performance mobile applications. "
                        "With a strong foundation in Dart, Java, Firebase, and RESTful APIs, I specialize in cross-platform app development using Flutter for Android, iOS, web, and desktop."
                        "I've contributed to multiple projects across e-commerce, legal services, education, and warehouse management, including published apps like TQNEEN, Easy Store, and AL-MANAR Private School App. "
                        "My work consistently focuses on optimizing performance and enhancing user experience—such as achieving a 30% load time reduction and a 20% boost in user retention at Startup Defenders  ."
                        "I follow clean architecture principles, apply SOLID and OOP design patterns, and bring practical knowledge in CI/CD, automated testing, and agile methodologies. "
                        "Beyond technical skills, I'm known for my adaptability, teamwork, and strong problem-solving capabilities.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 18,
                          color: themeProvider.secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            // SkillsSection(),
          ],
        );
      },
    );
  }
}

class StatAnimatedText extends StatefulWidget {
  final String countText;
  final String description;
  final ThemeProvider themeProvider;

  const StatAnimatedText({
    super.key,
    required this.countText,
    required this.description,
    required this.themeProvider,
  });

  @override
  State<StatAnimatedText> createState() => _StatAnimatedTextState();
}

class _StatAnimatedTextState extends State<StatAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _scaleAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.countText,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: widget.themeProvider.textColor,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            widget.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: widget.themeProvider.secondaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
