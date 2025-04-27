import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkPreviewCard extends StatelessWidget {
  final String link;
  const LinkPreviewCard({
    super.key,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: AnyLinkPreview(
        onTap: () {
          launchUrl(Uri.parse(link));
        },
        link: link,
        titleStyle: Theme.of(context).textTheme.titleMedium,
        displayDirection: UIDirection.uiDirectionHorizontal,
        removeElevation: true,
        previewHeight: 100,
      ),
    );
  }
}
