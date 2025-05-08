import 'package:flutter/material.dart';

import 'widgets/projects_builder.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
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
