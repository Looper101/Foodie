import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_app/constants.dart';

import 'components/login.dart';
import 'components/signup.dart';

class Auth extends StatefulWidget {
  static String id = 'Auth';
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mediaQuery = MediaQuery.of(context);
    var _screenHeight = size.height;
    var _screenWidth = size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Pallete.bgColor,
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: SingleChildScrollView(
          child: Container(
            height: _screenHeight,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Pallete.cardColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: _screenHeight * 0.07,
                        ),
                        Text(
                          'svgs or images goes here',
                          style: TextStyle(color: Colors.white),
                        ),
                        TabBar(
                          labelColor: Pallete.textColor,
                          unselectedLabelColor: Pallete.subtitle,
                          labelStyle: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Pallete.textColor),
                          unselectedLabelStyle:
                              Theme.of(context).textTheme.button.copyWith(
                                    color: Pallete.buttonColor.withOpacity(0.1),
                                  ),
                          indicatorColor: Pallete.buttonColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: [
                            Tab(
                              text: 'Login',
                            ),
                            Tab(
                              text: 'Sign up',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      right: _screenWidth * 0.07,
                      left: _screenWidth * 0.07,
                      top: _screenHeight * 0.03,
                      bottom: _screenHeight * 0.02,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: _screenHeight * 0.02),
                        Expanded(
                          flex: 8,
                          child: TabBarView(
                            children: [
                              Login(),
                              SignUp(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
