import 'package:flutter/material.dart';
import 'package:AquaScapeBali/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  _launchURL() async {
    const url = 'https://api.whatsapp.com/send?phone=+6283117933831';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final String title;
  const CallToActionTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchURL,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
