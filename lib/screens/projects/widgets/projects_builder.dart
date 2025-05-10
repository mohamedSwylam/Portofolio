import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../modules/project.dart';
import 'app_widget.dart';

class ProjectsBuilder extends StatelessWidget {
  const ProjectsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.isDesktop) {
        return ProjectsBuilderDesktopView();
      }
      return ProjectsBuilderMobileView();
    });
  }
}

class ProjectsBuilderMobileView extends StatelessWidget {
  const ProjectsBuilderMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: kIsWeb ? 1 : 0.8,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return AppWidget(project: project);
      },
    );
  }
}

class ProjectsBuilderDesktopView extends StatelessWidget {
  const ProjectsBuilderDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: projects.map((project) {
        return AppWidget(project: project);
      }).toList(),
    );
  }
}
