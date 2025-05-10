import 'package:flutter/material.dart';

import '../../../modules/recommendation.dart';
import '../../../services/helper_services.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({super.key, required this.recommendation});

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HelperServices.lunchUrl(recommendation.url);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(recommendation.image),
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 14,
              offset: Offset(0, 5),
              spreadRadius: -12,
              // color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
