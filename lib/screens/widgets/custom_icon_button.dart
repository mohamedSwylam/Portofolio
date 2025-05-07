import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String url;
  final Color color;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.url,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(url));
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: color,
          size: 24,
        ),
      ),
    );
  }
}
