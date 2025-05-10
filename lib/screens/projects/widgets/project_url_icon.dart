import 'package:flutter/material.dart';

import '../../../services/helper_services.dart';

class ProjectUrlIcon extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String url;
  const ProjectUrlIcon({
    super.key,
    required this.color,
    required this.icon,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: IconButton(
        onPressed: () {
          HelperServices.lunchUrl(url);
        },
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
