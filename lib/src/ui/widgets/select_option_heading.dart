import 'package:flutter/material.dart';
import 'package:test_app/src/utils/utils.dart';

class SelectOptionHeading extends StatefulWidget {
  final String heading;

  SelectOptionHeading({this.heading});

  @override
  _SelectOptionHeadingState createState() => _SelectOptionHeadingState();
}

class _SelectOptionHeadingState extends State<SelectOptionHeading> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: screenWidth(context, dividedBy: 15),
        ),
        Text(
          widget.heading,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
