import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:AquaScapeBali/datamodels/gallery_details_model.dart';
import 'package:AquaScapeBali/styles/text_styles.dart';

class GalleryDetailsDesktop extends StatelessWidget {
  final GalleryDetailsModel details;
  const GalleryDetailsDesktop({Key key, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            details.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          SizedBox(
            width: 50,
          ),
          Expanded(
            child: Text(
              details.description,
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          )
        ],
      ),
    );
  }
}
