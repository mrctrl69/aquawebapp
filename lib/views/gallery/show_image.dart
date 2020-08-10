import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  final String description;
  final String url;
  final String title;
  const ShowImage({Key key, this.description, this.url, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        elevation: 2,
        child: Column(
          children: <Widget>[
            Container(
              height: 220,
              width: double.infinity,
              child: Image.asset(url, fit: BoxFit.fill),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Text(title,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w800)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Text(description,
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'Open Sans')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
