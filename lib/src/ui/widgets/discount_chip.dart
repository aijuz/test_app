import 'package:flutter/material.dart';

class DiscountChip extends StatefulWidget {
  final String discount;

  DiscountChip({this.discount});

  @override
  _DiscountChipState createState() => _DiscountChipState();
}

class _DiscountChipState extends State<DiscountChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 20,
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          widget.discount + "% off",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
