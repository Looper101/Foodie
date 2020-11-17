import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:launch_app/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.productTitle,
    this.productPrice,
    this.onTap,
    this.oncartTap,
  }) : super(key: key);

  final String productTitle;
  final double productPrice;
  final Function onTap;
  final Function oncartTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _screenHeight = size.height;
    var _screenWidth = size.width;

    return InkResponse(
      onTap: onTap,
      child: Container(
        height: _screenHeight * 0.3,
        width: _screenWidth * 0.5,
        padding: EdgeInsets.symmetric(
          horizontal: _screenHeight * 0.02,
          vertical: _screenWidth * 0.05,
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
            borderRadius: BorderRadius.circular(20),
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
                  productTitle,
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
                  '\$$productPrice',
                  style: TextStyle(
                      color: Pallete.priceTextColor,
                      fontSize: 25,
                      letterSpacing: 0.1,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: _screenHeight * 0.06,
                  width: _screenWidth * 0.15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Pallete.buttonColor,
                      boxShadow: [
                        BoxShadow(
                            color: Pallete.buttonColor.withOpacity(0.4),
                            spreadRadius: 0.1,
                            blurRadius: 10,
                            offset: Offset(0, 0))
                      ]),
                  child: IconButton(
                    onPressed: oncartTap,
                    icon: Icon(
                      CupertinoIcons.shopping_cart,
                      color: Pallete.textColor,
                      size: 30,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
