import 'package:flutter/material.dart';
import 'package:test_app/src/ui/widgets/item_options.dart';
import 'package:test_app/src/ui/widgets/select_option_heading.dart';
import 'package:test_app/src/utils/utils.dart';

class SelectItemFromChoice extends StatefulWidget {
  final String choiceHeading;
  final String item1;
  final String item2;

  SelectItemFromChoice({this.choiceHeading, this.item1, this.item2});

  @override
  _SelectItemFromChoiceState createState() => _SelectItemFromChoiceState();
}

class _SelectItemFromChoiceState extends State<SelectItemFromChoice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SelectOptionHeading(
          heading: widget.choiceHeading,
        ),
        SizedBox(
          height: screenHeight(context, dividedBy: 50),
        ),
        BuildSelectOptions(
          itemName: widget.item1,
        ),
        SizedBox(
          height: screenWidth(context, dividedBy: 50),
        ),
        BuildSelectOptions(
          itemName: widget.item2,
        )
      ],
    );
  }
}
