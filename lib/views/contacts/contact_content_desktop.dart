import 'package:flutter/material.dart';
import 'package:AquaScapeBali/views/contacts/contact_detail.dart';
import 'package:AquaScapeBali/widgets/call_to_action/call_to_action.dart';

class ContactContentDesktop extends StatelessWidget {
  const ContactContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ContactsDetail(),
        Expanded(
          child: Center(
            child: CallToAction('Contact Us'),
          ),
        )
      ],
    );
  }
}
