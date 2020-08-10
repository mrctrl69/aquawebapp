import 'package:flutter/material.dart';
import 'package:AquaScapeBali/datamodels/gallery_item_model.dart';

import 'gallery_item.dart';

class GalleryList extends StatelessWidget {
  final gallery = [
    GalleryItemModel(
      title: 'Sample 1',
      description: 'Keterangan style',
      imageAsset: 'assets/images/image1.jpg',
    ),
    GalleryItemModel(
        title: 'Sample 2',
        description: 'Keterangan style',
        imageAsset: 'assets/images/image2.jpg'),
    GalleryItemModel(
        title: 'Sample 3',
        description: 'Keterangan style',
        imageAsset: 'assets/images/image3.jpg'),
    GalleryItemModel(
        title: 'Sample 4',
        description: 'Keterangan style',
        imageAsset: 'assets/images/image4.jpg'),
    GalleryItemModel(
        title: 'Sample 5',
        description: 'Keterangan style',
        imageAsset: 'assets/images/image5.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...gallery.map(
          (gallery) => GalleryItem(model: gallery),
        )
      ],
    );
  }
}
