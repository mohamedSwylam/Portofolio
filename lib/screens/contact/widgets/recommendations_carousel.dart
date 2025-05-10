import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../modules/recommendation.dart';
import 'recommendation_widget.dart';

class RecommendationsCarousel extends StatelessWidget {
  RecommendationsCarousel({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider.builder(
          itemCount: recommendations.length,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            enlargeCenterPage: true,
            aspectRatio: sizingInformation.isDesktop ? 3 : 2,
            viewportFraction: sizingInformation.isDesktop ? 0.5 : 0.8,
          ),
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            return RecommendationWidget(
              recommendation: recommendations[itemIndex],
            );
          },
        ),
      );
    });
  }
}
