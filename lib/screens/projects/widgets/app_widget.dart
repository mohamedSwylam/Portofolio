import 'package:animations/animations.dart';
import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/modules/project.dart';
import 'package:portfolio/screens/projects/widgets/app_info_dialog.dart';

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
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(project.icon),
                  )),
            ),
          ),
          Text(
            project.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              // fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
