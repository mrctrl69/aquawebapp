import 'package:flutter/material.dart';
import 'package:AquaScapeBali/views/about/about_detail.dart';
import 'package:AquaScapeBali/widgets/call_to_action/call_to_action.dart';

import 'about_detail.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AboutDetail(),
        Expanded(
          child: Center(
            child: CallToAction('Contact Us'),
          ),
        )
      ],
    );
  }
}
