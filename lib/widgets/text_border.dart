import 'package:flutter/material.dart';

class TextBorder extends StatelessWidget {
  Widget child;
  Text text;
  Color borderColors;

  TextBorder({this.text, this.borderColors, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: borderColors, width: 1),
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          ),
          child: child,
        ),
        Positioned(
          left: 20,
          top: 12,
          child: Container(
            padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            color: Colors.white,
            child: text,
          ),
        ),
      ],
    );
  }
}
