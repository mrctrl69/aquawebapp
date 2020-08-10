import 'package:AquaScapeBali/views/gallery/gallery_view.dart';
import 'package:flutter/material.dart';
import 'description_widget.dart';

class ImageDescription extends StatefulWidget {
  final ImageContent image;

  ImageDescription({Key key, @required this.image}) : super(key: key);

  @override
  _ImageDescriptionState createState() => _ImageDescriptionState();
}

class _ImageDescriptionState extends State<ImageDescription> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: imageDescription(
          widget.image.url, widget.image.title, widget.image.description),
    );
  }
}
