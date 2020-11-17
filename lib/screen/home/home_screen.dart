import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_app/screen/home/components/product_list.dart';
import 'package:launch_app/constants.dart';
import 'package:launch_app/models/categoryTag.dart';
import 'components/header.dart';
import 'components/search_with_button.dart';

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

    var _screenHeight = size.height;
    var _screenWidth = size.width;

    return Scaffold(
      backgroundColor: Pallete.bgColor,
      body: SafeArea(
        child: Scrollbar(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                brightness: Brightness.dark,
                backgroundColor: Pallete.bgColor,
                floating: true,
                forceElevated: true,
                centerTitle: false,
                automaticallyImplyLeading: false,
                title: Container(
                  decoration: BoxDecoration(
                    color: Pallete.inactiveColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Pallete.bgColor,
                    onPressed: () {},
                  ),
                ),
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.symmetric(
                            horizontal: _screenWidth * 0.01),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Pallete.inactiveColor.withOpacity(0.4),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.person_add), onPressed: () {}),
                      ),
                    ],
                  ),
                ],
              ),
              // SliverToBoxAdapter(child: AppBarM()),
              // SizedBox(
              //   height: _screenHeight * 0.05,
              // ),
              SliverToBoxAdapter(
                child: Header(),
              ),

              SliverToBoxAdapter(
                child: SearchWithButton(),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: _screenHeight * 0.04),
                  alignment: Alignment.center,
                  height: _screenHeight * 0.09,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryTags.length,
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
                                  categoryTags[i].name,
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
              ),

              SliverToBoxAdapter(
                child: ProductList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
