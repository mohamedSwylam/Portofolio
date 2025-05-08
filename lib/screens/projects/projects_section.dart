import 'package:flutter/material.dart';

import '../../resource/constants.dart';
import '../widgets/fading_translate_widget.dart';
import 'widgets/projects_builder.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FadingTranslateWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text(
                'Projects',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Image.asset(
                Constants.rocketICon,
                height: 50,
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Here are some of my projects that I have worked on:',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          ProjectsBuilder(),
        ],
      ),
    );
  }
}
