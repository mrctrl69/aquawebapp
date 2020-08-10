import 'package:flutter/material.dart';
import 'package:AquaScapeBali/views/about/about_detail.dart';
import 'package:AquaScapeBali/widgets/call_to_action/call_to_action.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AboutDetail(),
        SizedBox(
          height: 50,
        ),
        CallToAction('Contact Us'),
      ],
    );
  }
}
