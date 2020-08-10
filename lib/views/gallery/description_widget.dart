import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget imageDescription(String url, title, description) {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Text(title, style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 600,
                child: Image.asset(
                  url,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
