import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperServices {
  static lunchUrl(String link) async {
    Uri url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  static openGoogleMap({
    required double lat,
    required double long,
  }) {
    lunchUrl(
      'geo:$lat,$long',
      // 'https://www.google.com/maps/search/?api=1&query=$lat,$long',
    );
  }

  static String generateUniqueCode(int length) {
    StringBuffer stringBuffer = StringBuffer();

    const String characters =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

    for (int i = 0; i < length; i++) {
      int randomIndex = Random().nextInt(characters.length);

      stringBuffer.write(characters[randomIndex]);
    }
    return stringBuffer.toString();
  }

  static String dateFormatter(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute}';
  }

  static void copyValue(BuildContext context, {required dynamic value}) {
    Clipboard.setData(
      ClipboardData(
        text: '$value',
      ),
    );
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Copied $value')));
  }

  // static vibrate() async {
  //   bool hasVibrator = await Vibration.hasVibrator() ?? false;
  //   if (hasVibrator) {
  //     Vibration.vibrate(duration: 50);
  //   }
  // }

  // static share(String text, {required BuildContext context}) async {
  //   if (Platform.isAndroid) {
  //     await Share.share(text);
  //   } else {
  //     var box = context.findRenderObject() as RenderBox?;
  //     Share.share(text,
  //         sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  //   }
  // }
}
