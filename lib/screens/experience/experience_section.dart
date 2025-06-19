import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/resource/constants.dart';
import 'package:portfolio/resource/theme_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return ResponsiveBuilder(
          builder: (context, sizingInformation) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section Title
                Row(
                  children: [
                    Text(
                      'Experience',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: themeProvider.textColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Lottie.asset(
                      Constants.muscleIcon,
                      height: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 60),

                // Experience Timeline
                _buildExperienceTimeline(sizingInformation, themeProvider),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildExperienceTimeline(
      SizingInformation sizingInformation, ThemeProvider themeProvider) {
    final experiences = [
      ExperienceItem(
        year: '2024 - Present',
        title: 'Mobile Developer at CONSOLIDATED CASUAL LTD',
        description:
            'RFID (Radio Frequency identification) App used to manage warehouses using RFID technology to scan Bar Code. Located in MOKATTAM, Cairo, Egypt.',
        color: themeProvider.accentColor,
      ),
      ExperienceItem(
        year: '2023 - 2024',
        title: 'Mobile Developer at Startup Defenders',
        description:
            'Developed TQNEEN Lawyer and Customer Apps. Enhanced user experience and increased user retention by 20%. Located in MAADI, Cairo, Egypt.',
        color: themeProvider.accentColor,
      ),
      ExperienceItem(
        year: '2023',
        title: 'Mobile Developer at Innovation (Stock Tech)',
        description:
            'Worked on mobile applications development using Flutter framework. Located in Nasr city, Cairo, Egypt.',
        color: themeProvider.accentColor,
      ),
      ExperienceItem(
        year: '2022 - 2023',
        title: 'Mobile Developer at Pioneers Solutions',
        description:
            'Optimized application performance by 30% reduction in load time. Implemented code review process that decreased production bugs by 40%. Located in SHIBIN EL-KOM, MENOFIA.',
        color: themeProvider.accentColor,
      ),
      ExperienceItem(
        year: '2018 - 2024',
        title: 'Information Technology Degree (MENOFIA University)',
        description:
            'Faculty of Computers and Artificial Intelligence. Graduation Project: (WAFFARHA) E-Commerce Flutter and Web Application (Grade: A+).',
        color: themeProvider.accentColor,
      ),
    ];

    if (sizingInformation.isDesktop) {
      // Desktop timeline layout
      return IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Continuous Timeline Line
            Container(
              width: 2,
              color: experiences.first.color.withValues(alpha: 0.3),
            ),

            const SizedBox(width: 18),

            // Timeline Items
            Expanded(
              child: Column(
                children: experiences
                    .asMap()
                    .entries
                    .map((entry) => _buildTimelineItem(
                        entry.value,
                        sizingInformation,
                        entry.key,
                        experiences.length,
                        themeProvider))
                    .toList(),
              ),
            ),
          ],
        ),
      );
    } else {
      // Mobile timeline layout - vertical cards
      return Column(
        children: experiences
            .asMap()
            .entries
            .map((entry) => _buildMobileTimelineItem(
                entry.value, sizingInformation, entry.key, themeProvider))
            .toList(),
      );
    }
  }

  Widget _buildTimelineItem(
      ExperienceItem experience,
      SizingInformation sizingInformation,
      int index,
      int totalItems,
      ThemeProvider themeProvider) {
    return Container(
      margin: EdgeInsets.only(bottom: index == totalItems - 1 ? 0 : 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Timeline Circle Indicator (positioned over the continuous line)
          Transform.translate(
            offset: const Offset(-31, 0), // Centers the circle on the line
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: experience.color,
                shape: BoxShape.circle,
                border: Border.all(
                  color: themeProvider.cardColor,
                  width: 2,
                ),
              ),
            ),
          ),

          const SizedBox(width: 20),

          // Content
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: themeProvider.cardColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: experience.color.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Year
                  Text(
                    experience.year,
                    style: TextStyle(
                      color: experience.color,
                      fontSize: sizingInformation.isDesktop ? 14 : 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Title
                  Text(
                    experience.title,
                    style: TextStyle(
                      color: themeProvider.textColor,
                      fontSize: sizingInformation.isDesktop ? 20 : 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Description
                  Text(
                    experience.description,
                    style: TextStyle(
                      color: themeProvider.secondaryTextColor,
                      fontSize: sizingInformation.isDesktop ? 16 : 14,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileTimelineItem(
      ExperienceItem experience,
      SizingInformation sizingInformation,
      int index,
      ThemeProvider themeProvider) {
    return Container(
      margin: EdgeInsets.only(bottom: index == 4 ? 0 : 20),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: themeProvider.cardColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: experience.color.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Year
            Text(
              experience.year,
              style: TextStyle(
                color: experience.color,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),

            const SizedBox(height: 8),

            // Title
            Text(
              experience.title,
              style: TextStyle(
                color: themeProvider.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            // Description
            Text(
              experience.description,
              style: TextStyle(
                color: themeProvider.secondaryTextColor,
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExperienceItem {
  final String year;
  final String title;
  final String description;
  final Color color;

  ExperienceItem({
    required this.year,
    required this.title,
    required this.description,
    required this.color,
  });
}
