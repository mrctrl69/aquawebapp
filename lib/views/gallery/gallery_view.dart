import 'package:flutter/material.dart';
import 'package:AquaScapeBali/datamodels/gallery_details_model.dart';
import 'package:AquaScapeBali/widgets/gallery_list/gallery_list.dart';
import 'package:AquaScapeBali/widgets/gallery_details/gallery_details.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        GalleryDetails(
          details: GalleryDetailsModel(
            title: 'Gallery',
            description:
                "Here's some samples that we've created and also sold to our customers",
          ),
        ),
        SizedBox(
          height: 50,
        ),
        GalleryList(),
      ],
    ));
  }
}
