import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/src/ui/widgets/app_bar.dart';
import 'package:test_app/src/ui/widgets/bottom_nav_bar.dart';
import 'package:test_app/src/ui/widgets/delivery_time_and_stock_details.dart';
import 'package:test_app/src/ui/widgets/image_slider.dart';
import 'package:test_app/src/ui/widgets/package_list.dart';
import 'package:test_app/src/ui/widgets/rate_cutter.dart';
import 'package:test_app/src/ui/widgets/select_item_choice.dart';
import 'package:test_app/src/utils/utils.dart';

class HotelHomePage extends StatefulWidget {
  @override
  _HotelHomePageState createState() => _HotelHomePageState();
}

class _HotelHomePageState extends State<HotelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        titleName: "KFC Salmiya blow fried dishes",
      ),
      bottomNavigationBar: BuildBottomNavBar(),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            BuildImageSlider(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth(context, dividedBy: 16),
                  vertical: 10),
              child: Text(
                "Super Dinner",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
            RateCutter(
              firstRate: "2.350",
              finalRate: "2.050",
              discount: "30",
            ),
            SizedBox(
              height: 5,
            ),
            DeliveryTimeStockDetails(
              deliveryTime: "30",
              stockLeft: "3",
            ),
            SizedBox(
              height: 10,
            ),
            PackageList(),
            SizedBox(
              height: screenHeight(context, dividedBy: 40),
            ),
            SelectItemFromChoice(
              choiceHeading: "Your choice of 4pc chicken",
              item1: "Chicken Pc - Original",
              item2: "Chicken Pc - Spicy",
            ),
            SizedBox(
              height: screenHeight(context, dividedBy: 40),
            ),
            SelectItemFromChoice(
              choiceHeading: "Your choice of 4pc chicken",
              item1: "Chicken Pc - Original",
              item2: "Chicken Pc - Spicy",
            ),
            SizedBox(
              height: screenHeight(context, dividedBy: 40),
            ),
            SelectItemFromChoice(
              choiceHeading: "Add ons",
              item1: "Chicken Pc (+0.250 KWD)",
              item2: "Chicken Pc (+0.250 KWD)",
            )
          ],
        ),
      ),
    );
  }
}
