import 'package:flutter/material.dart';
import 'package:test_app/src/ui/widgets/select_deselect_icon.dart';
import 'package:test_app/src/utils/utils.dart';

class BuildSelectOptions extends StatefulWidget {
  final String itemName;

  BuildSelectOptions({this.itemName});

  @override
  _BuildSelectOptionsState createState() => _BuildSelectOptionsState();
}

class _BuildSelectOptionsState extends State<BuildSelectOptions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: screenWidth(context, dividedBy: 7),
        ),
        Container(
            width: screenWidth(context, dividedBy: 2),
            child: Text(widget.itemName)),
        SizedBox(
          width: screenWidth(context, dividedBy: 7),
        ),
        BuildSelectIcon()
      ],
    );
  }
}
