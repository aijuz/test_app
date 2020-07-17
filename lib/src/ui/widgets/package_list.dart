import 'package:flutter/material.dart';
import 'package:test_app/src/utils/utils.dart';

class PackageList extends StatefulWidget {
  @override
  _PackageListState createState() => _PackageListState();
}

class _PackageListState extends State<PackageList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth(context, dividedBy: 16)),
      child: Text(
        "4pcs Chicken + Fries + Coles law + Bun + Drink",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
