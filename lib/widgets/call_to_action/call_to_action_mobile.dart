import 'package:flutter/material.dart';
import 'package:AquaScapeBali/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CallToActionMobile extends StatelessWidget {
  _launchURL() async {
    const url = 'https://api.whatsapp.com/send?phone=+6283117933831';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final String title;
  const CallToActionMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchURL,
      child: Container(
        height: 60,
        alignment: Alignment.center,
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
