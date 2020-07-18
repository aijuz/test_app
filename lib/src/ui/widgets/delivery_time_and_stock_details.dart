import 'package:flutter/material.dart';
import 'package:test_app/src/utils/utils.dart';

class DeliveryTimeStockDetails extends StatefulWidget {
  final String deliveryTime;
  final String stockLeft;

  DeliveryTimeStockDetails({this.deliveryTime, this.stockLeft});

  @override
  _DeliveryTimeStockDetailsState createState() =>
      _DeliveryTimeStockDetailsState();
}

class _DeliveryTimeStockDetailsState extends State<DeliveryTimeStockDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: screenWidth(context, dividedBy: 16),
        ),
        Text("Within " + widget.deliveryTime + " mins"),
        SizedBox(
          width: screenWidth(context, dividedBy: 16),
        ),
        Text(
          "Only " + widget.stockLeft + " left in stock",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
