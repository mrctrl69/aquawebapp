import 'package:flutter/material.dart';
import 'package:AquaScapeBali/datamodels/gallery_item_model.dart';

class GalleryItem extends StatelessWidget {
  final GalleryItemModel model;
  const GalleryItem({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: Colors.white,
        elevation: 2,
        child: SizedBox(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 180,
                width: 360,
                child: Image.asset(
                  model.imageAsset,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      model.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                      softWrap: true,
                    ),
                    Text(
                      '${model.description}',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
