import 'package:flutter/material.dart';
import 'package:AquaScapeBali/views/about/about_detail.dart';

import 'about_detail.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AboutDetail(),
        Expanded(
          child: Container(
            // alignment: Alignment.centerRight,
            height: 500,
            child: Image.asset('assets/logo.png'),
          ),
        )
      ],
    );
  }
}
