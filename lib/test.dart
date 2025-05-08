import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
            'assets/animated_icons/muscle.json',
            height: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/animated_icons/rocket.webp',
            height: 150,
          ),
          SizedBox(
            height: 20,
          ),
          Lottie.asset(
            'assets/animated_icons/message_send.json',
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
