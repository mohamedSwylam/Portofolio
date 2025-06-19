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
      return ProjectsBuilderMobileView(sizingInformation: sizingInformation);
    });
  }
}

class ProjectsBuilderMobileView extends StatelessWidget {
  final SizingInformation sizingInformation;

  const ProjectsBuilderMobileView({
    super.key,
    required this.sizingInformation,
  });

  @override
  Widget build(BuildContext context) {
    // Determine grid configuration based on screen size
    int crossAxisCount;
    double childAspectRatio;

    if (sizingInformation.screenSize.width < 600) {
      // Small mobile screens
      crossAxisCount = 2;
      childAspectRatio = 0.9;
    } else if (sizingInformation.screenSize.width < 900) {
      // Medium screens (tablets)
      crossAxisCount = 3;
      childAspectRatio = 1.0;
    } else {
      // Large screens
      crossAxisCount = 4;
      childAspectRatio = 1.1;
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return AppWidget(
          project: project,
          sizingInformation: sizingInformation,
        );
      },
    );
  }
}

class ProjectsBuilderDesktopView extends StatelessWidget {
  const ProjectsBuilderDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Wrap(
          spacing: 20,
          runSpacing: 20,
          children: projects.map((project) {
            return AppWidget(
              project: project,
              sizingInformation: sizingInformation,
            );
          }).toList(),
        );
      },
    );
  }
}
