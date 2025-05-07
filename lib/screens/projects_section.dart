import 'package:animations/animations.dart';
import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/data/modules/project.dart';

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

class ProjectsBuilder extends StatelessWidget {
  const ProjectsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: Data.projects.length,
      itemBuilder: (context, index) {
        final project = Data.projects[index];
        return AppWidget(project: project);
      },
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModal(
          context: context,
          builder: (context) => FluidDialog(
            // Use a custom curve for the alignment transition
            alignmentCurve: Curves.easeInOutCubicEmphasized,
            // Setting custom durations for all animations.
            sizeDuration: const Duration(seconds: 3),
            alignmentDuration: const Duration(milliseconds: 600),
            transitionDuration: const Duration(milliseconds: 300),
            reverseTransitionDuration: const Duration(milliseconds: 50),
            // Here we use another animation from the animations package instead of the default one.
            transitionBuilder: (child, animation) => FadeScaleTransition(
              animation: animation,
              child: child,
            ),
            // Configuring how the dialog looks.
            defaultDecoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(8.0),
            ),
            rootPage: FluidDialogPage(
              builder: (context) => AppInfoDialog(project: project),
            ),
          ),
        );
      },
      child: Column(
        children: [
          Card(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(project.icon),
                  )),
            ),
          ),
          Text(
            project.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class AppInfoDialog extends StatelessWidget {
  const AppInfoDialog({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(project.icon),
                    )),
              ),
              const SizedBox(width: 15),
              Text(
                project.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Description:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            project.description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
