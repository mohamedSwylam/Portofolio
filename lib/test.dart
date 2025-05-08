import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resource/constants.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            Constants.muscleIcon,
            height: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            Constants.rocketICon,
            height: 150,
          ),
          SizedBox(
            height: 20,
          ),
          Lottie.asset(
            Constants.starIcon,
            height: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/animated_icons/star.webp',
            height: 80,
          ),
        ],
      )),
    );
  }
}
