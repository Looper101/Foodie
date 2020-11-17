import 'package:flutter/material.dart';
import 'package:launch_app/components/custom_tab_bar.dart';
import 'package:launch_app/constants.dart';

import 'package:launch_app/screen/home/home_screen.dart';

class NavScreen extends StatefulWidget {
  static String id = 'NavScreen';

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = [
    Icons.home,
    Icons.favorite_border,
    Icons.notifications_none,
    Icons.card_giftcard
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mediaQuery = MediaQuery.of(context);
    var _screenHeight = size.height;
    var _screenWidth = size.width;
    return DefaultTabController(
      length: _screens.length,
      child: Scaffold(
        bottomNavigationBar: CustomTabBar(
          icons: _icons,
          selectedIndex: _selectedIndex,
          onTap: (index) => setState(() => _selectedIndex = index),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: _screens,
        ),
      ),
    );
  }
}
