import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:AquaScapeBali/views/contacts/contact_content_desktop.dart';
import 'package:AquaScapeBali/views/contacts/contact_content_mobile.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: ContactContentMobile(),
        desktop: ContactContentDesktop(),
      ),
    );
  }
}
