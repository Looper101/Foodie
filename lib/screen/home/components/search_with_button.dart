import 'package:flutter/material.dart';
import 'package:launch_app/constants.dart';

class SearchWithButton extends StatelessWidget {
  const SearchWithButton({
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _screenHeight = size.height;
    var _screenWidth = size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.02),
      margin: EdgeInsets.symmetric(vertical: _screenHeight * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Pallete.cardColor,
                border: Border.all(
                  color: Pallete.inactiveColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                style: TextStyle(color: Pallete.inactiveColor),
                cursorColor: Pallete.buttonColor,
                decoration: InputDecoration(
                  filled: false,
                  prefixIcon: Icon(Icons.search),
                  fillColor: Pallete.cardColor,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Pallete.inactiveColor),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
          SizedBox(
            width: _screenWidth * 0.02,
          ),
          InkWell(
            onTap: () {},
            splashColor: Pallete.buttonColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: _screenHeight * 0.08,
              width: _screenWidth * 0.15,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Pallete.buttonColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.menu,
                color: Pallete.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
