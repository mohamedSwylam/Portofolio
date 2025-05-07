import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/data/modules/project.dart';
import 'package:portfolio/screens/projects/widgets/project_url_icon.dart';

class AppInfoDialog extends StatelessWidget {
  const AppInfoDialog({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Links:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              if (project.googlePlayUrl.isNotEmpty)
                ProjectUrlIcon(
                  color: Colors.green,
                  icon: FontAwesomeIcons.googlePlay,
                  url: project.googlePlayUrl,
                ),
              const SizedBox(width: 25),
              if (project.appStoreUrl.isNotEmpty)
                ProjectUrlIcon(
                  color: Colors.blue,
                  icon: FontAwesomeIcons.appStoreIos,
                  url: project.appStoreUrl,
                ),
              const SizedBox(width: 25),
              if (project.websiteUrl.isNotEmpty)
                ProjectUrlIcon(
                  color: Colors.purple,
                  icon: Icons.web,
                  url: project.websiteUrl,
                ),
            ],
          )
        ],
      ),
    );
  }
}
