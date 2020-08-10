import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:AquaScapeBali/styles/text_styles.dart';

class AboutDetail extends StatelessWidget {
  const AboutDetail({Key key}) : super(key: key);

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
              Text(
                'We Are.\nLocal Entrepreneur',
                style: titleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "We just started our journey to serve people what we can with our skills, because we believe in doing best for our customers. You can also support us by buying our product!",
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
