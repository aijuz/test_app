import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class BuildImageSlider extends StatefulWidget {
  BuildImageSlider({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BuildImageSliderState createState() => _BuildImageSliderState();
}

class _BuildImageSliderState extends State<BuildImageSlider> {
  @override
  void initState() {
    super.initState();
  }

  static List<String> links = [
    "https://i.pinimg.com/originals/cc/18/8c/cc188c604e58cffd36e1d183c7198d21.jpg",
    "https://www.kyoceradocumentsolutions.be/blog/wp-content/uploads/2019/03/iStock-881331810.jpg",
    "https://resources.matcha-jp.com/resize/720x2000/2020/04/23-101958.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 250.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 12.0,
          dotIncreaseSize: 1.5,
          dotIncreasedColor: Colors.orangeAccent,
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomCenter,
          dotVerticalPadding: 10.0,
          showIndicator: true,
          indicatorBgPadding: 7.0,
          images: [
            NetworkImage("https://www.shudhrestaurant.com/images/6.jpeg"),
            NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5BInKZNsqXXCHG8o-bcbONMULtiGhtMT2HfpxSLrX2X_oXTk&s'),
            NetworkImage(
                'https://im1.dineout.co.in/images/uploads/restaurant/sharpen/4/k/r/p48441-15700864075d959e0721187.jpg?tr=tr:n-xlarge'),
            NetworkImage(
                'https://im1.dineout.co.in/images/uploads/restaurant/sharpen/4/s/u/p48441-15700865235d959e7b97a32.jpg?tr=tr:n-xlarge'),
          ],
        ),
      ),
    );
  }
}
