import 'package:flutter/material.dart';
import 'package:AquaScapeBali/datamodels/navbar_item_model.dart';

class NavBarItemMobile extends StatelessWidget {
  final NavBarItemModel model;
  NavBarItemMobile({this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 30),
      child: Row(
        children: <Widget>[
          Icon(model.iconData),
          SizedBox(
            width: 30,
          ),
          Text(
            model.title,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
