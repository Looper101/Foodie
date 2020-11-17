import 'package:flutter/material.dart';
import 'package:launch_app/components/product_card.dart';
import 'package:launch_app/models/product.dart';
import 'package:launch_app/screen/details/detail_screen.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mediaQuery = MediaQuery.of(context);
    var _screenHeight = size.height;
    var _screenWidth = size.width;
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: ),
      height: _screenHeight * 0.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, i) {
          return ProductCard(
            productTitle: products[i].name,
            productPrice: products[i].price,
            oncartTap: () {
              //When user click on the CartIconButton
            },
            onTap: () {
              Navigator.pushNamed(context, DetailScreen.id,
                  arguments: products[i]);
            },
          );
        },
      ),
    );
  }
}
