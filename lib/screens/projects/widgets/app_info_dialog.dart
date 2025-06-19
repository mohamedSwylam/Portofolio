import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../modules/project.dart';
import '../../widgets/custom_icon_button.dart';

class AppInfoDialog extends StatelessWidget {
  const AppInfoDialog({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Container(
        width: sizingInformation.isDesktop
            ? 500
            : MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: sizingInformation.isDesktop
                      ? 100
                      : MediaQuery.of(context).size.width * 0.15,
                  height: sizingInformation.isDesktop
                      ? 100
                      : MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(project.icon),
                      )),
                ),
                const SizedBox(width: 15),
                Container(
                  child: Text(
                    project.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      fontSize: sizingInformation.isDesktop ? 14 : 12,
                    ),
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
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (project.googlePlayUrl.isNotEmpty)
                    CustomIconButton(
                      color: Colors.green,
                      icon: FontAwesomeIcons.googlePlay,
                      url: project.googlePlayUrl,
                    ),
                  if (project.googlePlayUrl.isNotEmpty)
                    const SizedBox(width: 25),
                  if (project.appStoreUrl.isNotEmpty)
                    CustomIconButton(
                      color: Colors.blue,
                      icon: FontAwesomeIcons.appStoreIos,
                      url: project.appStoreUrl,
                    ),
                  if (project.appStoreUrl.isNotEmpty) const SizedBox(width: 25),
                  if (project.websiteUrl.isNotEmpty)
                    CustomIconButton(
                      color: Colors.black,
                      icon: FontAwesomeIcons.github,
                      url: project.websiteUrl,
                    ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
