import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:launch_app/constants.dart';
import 'package:launch_app/screen/home/home_screen.dart';
import 'package:launch_app/widgets/action_button.dart';
import 'package:launch_app/widgets/input_field.dart';

class Login extends StatelessWidget {
  const Login({
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mediaQuery = MediaQuery.of(context);
    var _screenHeight = size.height;
    var _screenWidth = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.015),
          child: Text(
            'Full Name',
            style: TextStyle(
              color: Pallete.subtitle,
              fontSize: 17,
            ),
          ),
        ),
        SizedBox(
          height: _screenHeight * 0.01,
        ),
        InputField(),
        SizedBox(
          height: _screenHeight * 0.005,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.015),
          child: Text(
            'Email Address',
            style: TextStyle(
              color: Pallete.subtitle,
              fontSize: 17,
            ),
          ),
        ),
        SizedBox(
          height: _screenHeight * 0.005,
        ),
        InputField(),
        SizedBox(
          height: _screenHeight * 0.01,
        ),
        SizedBox(
          height: _screenHeight * 0.01,
        ),
        Align(
          alignment: Alignment.center,
          child: CupertinoButton(
            child: Text('Forgot Password'),
            onPressed: () {
              showForgotPasswordModal(
                context: context,
                height: _screenHeight,
                width: _screenWidth,
              );
            },
          ),
        ),
        Spacer(),
        ActionButton(
          label: 'Login',
          onPress: () => Navigator.pushNamed(context, HomeScreen.id),
        )
      ],
    );
  }
}

showForgotPasswordModal({BuildContext context, double height, double width}) {
  return showModalBottomSheet(
    isScrollControlled: true,
    isDismissible: true,
    backgroundColor: Color(0xFF000015),
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + height * 0.01,
            right: width * 0.07,
            left: width * 0.07,
            top: height * 0.03,
          ),
          decoration: BoxDecoration(
            color: Pallete.cardColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Forgot Password',
                style: TextStyle(
                  color: Pallete.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                'Email address',
                style: TextStyle(color: Pallete.subtitle),
              ),
              InputField(),
              SizedBox(
                height: 20,
              ),
              ActionButton(
                label: 'Reset',
                onPress: () {},
              )
            ],
          ),
        ),
      );
    },
  );
}
