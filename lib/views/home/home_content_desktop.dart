import 'package:flutter/material.dart';
import 'package:AquaScapeBali/widgets/call_to_action/call_to_action.dart';
import 'package:AquaScapeBali/widgets/main_detail/main_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MainDetail(),
        Expanded(
          child: Center(
            child: CallToAction('Order Now'),
          ),
        )
      ],
    );
  }
}
