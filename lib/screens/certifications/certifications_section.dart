import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/resource/constants.dart';
import 'package:portfolio/resource/theme_provider.dart';
import 'package:portfolio/screens/certifications/widget/certification_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CertificationSection extends StatelessWidget {
  const CertificationSection({super.key});

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
                      'Certifications',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: themeProvider.textColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      Constants.starIcon,
                      height: 40,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Professional certifications and achievements that validate my expertise',
                  style: TextStyle(
                    fontSize: sizingInformation.isDesktop ? 18 : 16,
                    color: themeProvider.secondaryTextColor,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 50),

                // Certifications Grid
                CertificationsCarousel(sizingInformation: sizingInformation),
              ],
            );
          },
        );
      },
    );
  }
}

class CertificationsCarousel extends StatelessWidget {
  final SizingInformation sizingInformation;

  const CertificationsCarousel({
    super.key,
    required this.sizingInformation,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider.builder(
          itemCount: certifications.length,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            enlargeCenterPage: true,
            aspectRatio: sizingInformation.isDesktop ? 3 : 2,
            viewportFraction: sizingInformation.isDesktop ? 0.5 : 0.8,
          ),
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            return CertificationWidget(
              certification: certifications[itemIndex],
            );
          },
        ),
      );
    });
  }
}
