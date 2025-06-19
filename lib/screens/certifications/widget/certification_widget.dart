import 'package:flutter/material.dart';

class CertificationWidget extends StatelessWidget {
  const CertificationWidget({super.key, required this.certification});

  final Certification certification;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (certification.url.isNotEmpty) {
          // HelperServices.lunchUrl(certification.url);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(certification.image),
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

// Certification Model
class Certification {
  final String url;
  final String image;

  Certification({
    required this.url,
    required this.image,
  });
}

// Certification Data
List<Certification> certifications = [
  Certification(
    url: 'https://khamsat.com/user/swylam_ali0/reviews/792552',
    image: 'assets/recommendations/1.jpg',
  ),
  Certification(
    url: 'https://khamsat.com/user/swylam_ali0/reviews/813913',
    image: 'assets/recommendations/2.jpg',
  ),
  Certification(
    url: 'https://khamsat.com/user/swylam_ali0/reviews/840107',
    image: 'assets/recommendations/4.jpeg',
  ),
  Certification(
    url: 'https://khamsat.com/user/swylam_ali0/reviews/922655',
    image: 'assets/recommendations/5.jpeg',
  ),
  Certification(
    url: 'https://khamsat.com/user/swylam_ali0/reviews/922655',
    image: 'assets/recommendations/android.jpg',
  ),
  Certification(
    url: 'https://khamsat.com/user/swylam_ali0/reviews/922655',
    image: 'assets/recommendations/7.jpg',
  ),
];
