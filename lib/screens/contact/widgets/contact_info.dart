import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../resource/theme_provider.dart';

class ContactInfoGrid extends StatelessWidget {
  const ContactInfoGrid({super.key});

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // Contact cards in responsive layout
                  if (sizingInformation.isDesktop) ...[
                    // Desktop layout - 2x3 grid
                    Row(
                      children: [
                        Expanded(
                          child: _buildContactCard(
                            themeProvider: themeProvider,
                            icon: Icons.location_on,
                            title: 'ADDRESS',
                            subtitle: 'Maadi, Cairo, Egypt',
                            onTap: () => _launchURL(
                                'https://maps.google.com/?q=Maadi,Cairo,Egypt'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildContactCard(
                            themeProvider: themeProvider,
                            icon: Icons.phone,
                            title: 'PHONE',
                            subtitle: '+201098570050',
                            onTap: () => _launchURL('tel:+201098570050'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: _buildContactCard(
                            themeProvider: themeProvider,
                            icon: Icons.email,
                            title: 'EMAIL',
                            subtitle: 'mohamedswylam5@gmail.com',
                            onTap: () =>
                                _launchURL('mailto:mohamedswylam5@gmail.com'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildContactCard(
                            themeProvider: themeProvider,
                            icon: FontAwesomeIcons.whatsapp,
                            title: 'WHATSAPP',
                            subtitle: '+201098570050',
                            onTap: () => _launchURL(
                                'https://wa.me/+201098570050?text=Hello%20Mohamed'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: _buildContactCard(
                            themeProvider: themeProvider,
                            icon: FontAwesomeIcons.linkedin,
                            title: 'LINKEDIN',
                            subtitle: 'mohamedswylam9',
                            onTap: () => _launchURL(
                                'https://www.linkedin.com/in/mohamedswylam9'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildContactCard(
                            themeProvider: themeProvider,
                            icon: FontAwesomeIcons.github,
                            title: 'GITHUB',
                            subtitle: 'mohamedSwylam',
                            onTap: () =>
                                _launchURL('https://github.com/mohamedSwylam'),
                          ),
                        ),
                      ],
                    ),
                  ] else ...[
                    // Mobile layout - single column
                    _buildContactCard(
                      themeProvider: themeProvider,
                      icon: Icons.location_on,
                      title: 'ADDRESS',
                      subtitle: 'Maadi, Cairo, Egypt',
                      onTap: () => _launchURL(
                          'https://maps.google.com/?q=Maadi,Cairo,Egypt'),
                    ),
                    const SizedBox(height: 8),
                    _buildContactCard(
                      themeProvider: themeProvider,
                      icon: Icons.phone,
                      title: 'PHONE',
                      subtitle: '+201098570050',
                      onTap: () => _launchURL('tel:+201098570050'),
                    ),
                    const SizedBox(height: 8),
                    _buildContactCard(
                      themeProvider: themeProvider,
                      icon: Icons.email,
                      title: 'EMAIL',
                      subtitle: 'mohamedswylam5@gmail.com',
                      onTap: () =>
                          _launchURL('mailto:mohamedswylam5@gmail.com'),
                    ),
                    const SizedBox(height: 8),
                    _buildContactCard(
                      themeProvider: themeProvider,
                      icon: FontAwesomeIcons.whatsapp,
                      title: 'WHATSAPP',
                      subtitle: '+201098570050',
                      onTap: () => _launchURL(
                          'https://wa.me/+201098570050?text=Hello%20Mohamed'),
                    ),
                    const SizedBox(height: 8),
                    _buildContactCard(
                      themeProvider: themeProvider,
                      icon: FontAwesomeIcons.linkedin,
                      title: 'LINKEDIN',
                      subtitle: 'mohamedswylam9',
                      onTap: () => _launchURL(
                          'https://www.linkedin.com/in/mohamedswylam9'),
                    ),
                    const SizedBox(height: 8),
                    _buildContactCard(
                      themeProvider: themeProvider,
                      icon: FontAwesomeIcons.github,
                      title: 'GITHUB',
                      subtitle: 'mohamedSwylam',
                      onTap: () =>
                          _launchURL('https://github.com/mohamedSwylam'),
                    ),
                  ],
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildContactCard({
    required ThemeProvider themeProvider,
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: themeProvider.isDarkTheme
              ? const Color(0xFF1E293B)
              : const Color(0xFF1E293B),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: themeProvider.isDarkTheme
                ? Colors.grey[700]!
                : Colors.grey[300]!,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: Colors.blue,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
