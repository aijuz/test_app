import 'package:flutter/material.dart';
import 'package:test_app/src/utils/utils.dart';

class BuildBottomNavBar extends StatefulWidget {
  @override
  _BuildBottomNavBarState createState() => _BuildBottomNavBarState();
}

class _BuildBottomNavBarState extends State<BuildBottomNavBar> {
  int counter = 0;

  void incCounter() {
    setState(() {
      counter++;
    });
  }

  void decCounter() {
    if (counter > 0)
      setState(() {
        counter--;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: screenHeight(context, dividedBy: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Padding(
              padding:
                  EdgeInsets.only(top: screenHeight(context, dividedBy: 40)),
              child: Icon(
                Icons.add_circle,
                size: 50,
                color: Theme.of(context).primaryColor,
              ),
            ),
            onTap: () {
              incCounter();
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Quantity",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight(context, dividedBy: 100),
              ),
              Container(
                height: screenHeight(context, dividedBy: 20),
                width: screenWidth(context, dividedBy: 3.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2.5),
                ),
                child: Center(
                  child: Text(
                    counter.toString(),
                    style: TextStyle(
                        color: Theme
                            .of(context)
                            .primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(
                  top: screenHeight(context, dividedBy: 40)),
              child: Icon(
                Icons.remove_circle,
                size: 50,
                color: Theme
                    .of(context)
                    .primaryColor,
              ),
            ), onTap: () {
            decCounter();
          },
          ),
        ],
      ),
    );
  }
}
