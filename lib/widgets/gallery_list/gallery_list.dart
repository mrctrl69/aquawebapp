import 'package:AquaScapeBali/views/gallery/show_image.dart';
import 'package:flutter/material.dart';

import 'gallery_item.dart';

class GalleryList extends StatelessWidget {
  final gallery = [
    ShowImage(
      title: 'Sample 1',
      description: 'Keterangan style',
      url: 'assets/images/image1.jpg',
    ),
    ShowImage(
        title: 'Sample 2',
        description: 'Keterangan style',
        url: 'assets/images/image2.jpg'),
    ShowImage(
        title: 'Sample 3',
        description: 'Keterangan style',
        url: 'assets/images/image3.jpg'),
    ShowImage(
        title: 'Sample 4',
        description: 'Keterangan style',
        url: 'assets/images/image4.jpg'),
    ShowImage(
        title: 'Sample 5',
        description: 'Keterangan style',
        url: 'assets/images/image5.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...gallery.map(
          (gallery) => GalleryItem(),
        )
      ],
    );
  }
}
