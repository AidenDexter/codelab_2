import 'package:flutter/material.dart';

import '../data.dart';
import '../main.dart';
import '../models/bottom_bar_model.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  var _bottomBarItems = bottomBarListItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_bottomBarItems.length, (index) {
          var barItemWidget = _bottomBarItems[index];
          return IconButton(
              icon: Icon(barItemWidget.icon,
                  color: barItemWidget.isSelected! ? mainYellow : Colors.grey),
              onPressed: () {
                setState(() {
                  _bottomBarItems.forEach((element) {
                    element.isSelected = element == barItemWidget;
                  });
                });
              });
        }),
      ),
    );
  }
}
