import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/link_preview_card.dart';

import '../data/data.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          ...Data.projectsLinks.map((link) => LinkPreviewCard(link: link)),
        ],
      ),
    );
  }
}
