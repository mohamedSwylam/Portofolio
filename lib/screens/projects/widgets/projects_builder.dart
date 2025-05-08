import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/projects/widgets/app_widget.dart';

class ProjectsBuilder extends StatelessWidget {
  const ProjectsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AppData.projects.length,
      itemBuilder: (context, index) {
        final project = AppData.projects[index];
        return AppWidget(project: project);
      },
    );
  }
}
