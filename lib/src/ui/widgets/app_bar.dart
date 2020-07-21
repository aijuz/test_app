import 'package:flutter/material.dart';
import 'package:test_app/src/ui/widgets/clickable_icon.dart';
import 'package:test_app/src/utils/utils.dart';

class BuildAppBar extends StatelessWidget with PreferredSizeWidget {
  final String titleName;

  BuildAppBar({this.titleName});

  @override
  Size get preferredSize => Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
        height: screenHeight(context, dividedBy: 2),
        child: Row(
          children: <Widget>[
            BuildClickableIcon(
              iconData: Icons.arrow_back_ios,
            ),
            SizedBox(
              width: screenWidth(context, dividedBy: 30),
            ),
            Container(
              width: screenWidth(context, dividedBy: 1.8),
              child: Text(titleName,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBox(
              width: screenWidth(context, dividedBy: 14),
            ),
            BuildClickableIcon(
              size: 35,
              iconData: Icons.search,
            )
          ],
        ),
      ),
    );
  }
}
