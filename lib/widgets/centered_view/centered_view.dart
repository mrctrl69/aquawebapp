import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 2000),
          child: child,
        ),
      ),
    );
  }
}
