import 'package:flutter/material.dart';
import 'package:AquaScapeBali/views/contacts/contact_detail.dart';
import 'package:AquaScapeBali/widgets/call_to_action/call_to_action.dart';

class ContactContentMobile extends StatelessWidget {
  const ContactContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ContactsDetail(),
        SizedBox(
          height: 50,
        ),
        CallToAction('Contact Us'),
      ],
    );
  }
}
