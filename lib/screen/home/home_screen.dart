import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_app/constants.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeTeleme';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mediaQuery = MediaQuery.of(context);
    var _screenHeight = size.height;
    var _screenWidth = size.width;

    return Scaffold(
      backgroundColor: Pallete.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: _screenWidth * 0.03,
              horizontal: _screenWidth * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBarM(),
                SizedBox(
                  height: _screenHeight * 0.05,
                ),
                Header(screenHeight: _screenHeight),
                SearchWithButton(
                    screenHeight: _screenHeight, screenWidth: _screenWidth),
                Container(
                  margin: EdgeInsets.symmetric(vertical: _screenHeight * 0.04),
                  alignment: Alignment.center,
                  height: _screenHeight * 0.09,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                      itemBuilder: (context, i) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = i;
                              print(currentIndex);
                            });
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(20.0),
                            child: Stack(
                              children: <Widget>[
                                Text(
                                  'Pizza + $i',
                                  style:
                                      TextStyle(color: Pallete.inactiveColor),
                                ),
                                Positioned(
                                  bottom: -0,
                                  child: Container(
                                    width: _screenWidth * 0.17,
                                    height: _screenHeight * 0.005,
                                    color: currentIndex == i
                                        ? Pallete.buttonColor
                                        : Pallete.cardBorderColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  height: _screenHeight * 0.4,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (context, i) {
                      return ProductCard(
                        screenHeight: _screenHeight,
                        screenWidth: _screenWidth,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required double screenHeight,
    @required double screenWidth,
  })  : _screenHeight = screenHeight,
        _screenWidth = screenWidth,
        super(key: key);

  final double _screenHeight;
  final double _screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _screenHeight * 0.3,
      width: _screenWidth * 0.5,
      padding: EdgeInsets.symmetric(
        horizontal: _screenHeight * 0.02,
        vertical: _screenWidth * 0.03,
      ),
      margin: EdgeInsets.symmetric(horizontal: _screenWidth * 0.02),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 4),
              spreadRadius: 5,
              blurRadius: 10,
              color: Colors.black.withOpacity(0.1),
            )
          ],
          color: Pallete.cardColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Pallete.inactiveColor.withOpacity(0.2),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: CupertinoActivityIndicator(
              radius: 30,
              animating: true,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sake Roll',
                style: TextStyle(
                  color: Pallete.textColor,
                  fontSize: 25,
                ),
              ),
              Text(
                'Kinoa,Kani,Avocado',
                style: TextStyle(
                  color: Pallete.subtitle,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '\$14.35',
                style: TextStyle(
                    color: Pallete.priceTextColor,
                    fontSize: 25,
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: _screenHeight * 0.05,
                width: _screenWidth * 0.15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Pallete.buttonColor),
                child: Icon(
                  CupertinoIcons.shopping_cart,
                  color: Pallete.textColor,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SearchWithButton extends StatelessWidget {
  const SearchWithButton({
    Key key,
    @required double screenHeight,
    @required double screenWidth,
  })  : _screenHeight = screenHeight,
        _screenWidth = screenWidth,
        super(key: key);

  final double _screenHeight;
  final double _screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: _screenHeight * 0.04),
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

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required double screenHeight,
  })  : _screenHeight = screenHeight,
        super(key: key);

  final double _screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class AppBarM extends StatelessWidget {
  const AppBarM({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Pallete.cardBorderColor, width: 2.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Icon(CupertinoIcons.shuffle,
                size: 40, color: Pallete.activeColor),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Pallete.cardColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Pallete.cardBorderColor,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Icon(CupertinoIcons.person,
                size: 40, color: Pallete.activeColor),
          ),
        ),
      ],
    );
  }
}
