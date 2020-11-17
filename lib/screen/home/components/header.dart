import 'package:flutter/material.dart';
import 'package:launch_app/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mediaQuery = MediaQuery.of(context);
    var _screenHeight = size.height;
    var _screenWidth = size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: _screenWidth * 0.02, vertical: _screenHeight * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Fast And',
            style: TextStyle(
                color: Pallete.textColor.withOpacity(0.7),
                fontWeight: FontWeight.w700,
                fontSize: 30),
          ),
          SizedBox(
            height: _screenHeight * 0.01,
          ),
          Text(
            'Delicious Food',
            style: TextStyle(
                color: Pallete.subtitle,
                fontWeight: FontWeight.w700,
                fontSize: 30),
          ),
        ],
      ),
    );
  }
}
