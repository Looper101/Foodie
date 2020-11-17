import 'package:flutter/material.dart';
import 'package:launch_app/constants.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<IconData> icons;
  final Function(int) onTap;
  const CustomTabBar({
    Key key,
    this.selectedIndex,
    this.icons,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _screenHeight = size.height;

    return Container(
      color: Pallete.bgColor,
      padding: EdgeInsets.only(bottom: _screenHeight * 0.01),
      child: TabBar(
        indicatorColor: Colors.transparent,
        onTap: onTap,
        tabs: icons
            .asMap()
            .map(
              (i, e) => MapEntry(
                e,
                Tab(
                  icon: Icon(
                    e,
                    color: selectedIndex == i
                        ? Pallete.buttonColor
                        : Pallete.inactiveColor,
                    size: 30,
                  ),
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }
}
