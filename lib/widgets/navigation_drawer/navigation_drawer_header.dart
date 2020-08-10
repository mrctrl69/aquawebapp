import 'package:flutter/material.dart';
import 'package:AquaScapeBali/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationDrawerHeader extends StatelessWidget {
  _launchURL() async {
    const url = 'https://api.whatsapp.com/send?phone=+6283117933831';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: InkWell(
        onTap: _launchURL,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 50,
              child: Image.asset('assets/logo.png'),
            ),
            Text(
              'ORDER NOW',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            Text(
              'Tap Here',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
