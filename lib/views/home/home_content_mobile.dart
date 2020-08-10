import 'package:flutter/material.dart';
import 'package:AquaScapeBali/widgets/call_to_action/call_to_action.dart';
import 'package:AquaScapeBali/widgets/main_detail/main_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MainDetail(),
        SizedBox(
          height: 50,
        ),
        CallToAction('Order Now'),
      ],
    );
  }
}
