import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:AquaScapeBali/styles/text_styles.dart';

class MainDetail extends StatelessWidget {
  const MainDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.left
                : TextAlign.center;

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Text(
                'Aqua.\nScape',
                style: titleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hei!\nLooking for Aqua Scape product or services? You're at the right site then.\n Here we offer you our services and produt to build and maintenance your Aqua Scape.\n Still waiting? Why? click on that button now",
                style: descriptionTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
