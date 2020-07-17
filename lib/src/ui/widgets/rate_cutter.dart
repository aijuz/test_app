import 'package:flutter/material.dart';
import 'package:test_app/src/ui/widgets/discount_chip.dart';
import 'package:test_app/src/utils/utils.dart';

class RateCutter extends StatefulWidget {
  final String firstRate;
  final String finalRate;
  final String discount;

  RateCutter({this.firstRate, this.finalRate, this.discount});

  @override
  _RateCutterState createState() => _RateCutterState();
}

class _RateCutterState extends State<RateCutter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: screenWidth(context, dividedBy: 16),
        ),
        Text(
          "KD " + widget.firstRate,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.lineThrough),
        ),
        SizedBox(
          width: screenWidth(context, dividedBy: 40),
        ),
        Text(
          "KD " + widget.finalRate,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.orangeAccent),
        ),
        SizedBox(
          width: screenWidth(context, dividedBy: 2.5),
        ),
        DiscountChip(
          discount: widget.discount,
        ),
      ],
    );
  }
}
