import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:AquaScapeBali/datamodels/gallery_details_model.dart';
import 'package:AquaScapeBali/widgets/gallery_details/gallery_details_desktop.dart';
import 'package:AquaScapeBali/widgets/gallery_details/gallery_details_mobile.dart';

class GalleryDetails extends StatelessWidget {
  final GalleryDetailsModel details;
  const GalleryDetails({Key key, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: GalleryDetailsDesktop(details: details),
      mobile: GalleryDetailsMobile(details: details),
    );
  }
}
