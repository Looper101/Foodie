import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_app/constants.dart';
import 'package:launch_app/widgets/action_button.dart';
import 'package:launch_app/widgets/input_field.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  // void showErrorSigningUp(BuildContext context, String parameterErro) {
  //   showCupertinoDialog(
  //       context: context,
  //       builder: (context) {
  //         return CupertinoAlertDialog(
  //           title: Text(''),
  //           content: Container(
  //             height: 30,
  //             width: 90,
  //             child: Text(parameterErro),
  //           ),
  //           actions: <Widget>[
  //             Container(
  //               color: Pallete.cardBorderColor,
  //               child: FlatButton(
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   },
  //                   child: Text(
  //                     'Close',
  //                     style: TextStyle(color: Pallete.textColor),
  //                   )),
  //             )
  //           ],
  //         );
  //       });
  // }

  String _parameterError = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mediaQuery = MediaQuery.of(context);
    var _screenHeight = size.height;
    var _screenWidth = size.width;
    return Form(
      key: _formKey,
      child: Column(
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
          InputField(
            validator: (value) {
              if (value.contains(RegExp(r'[A-Z]'))) {
                return 'exploreed';
              }
            },
          ),
          SizedBox(
            height: _screenHeight * 0.01,
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
          InputField(),
          SizedBox(
            height: _screenHeight * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.015),
            child: Text(
              'Password',
              style: TextStyle(
                color: Pallete.subtitle,
                fontSize: 17,
              ),
            ),
          ),
          InputField(),
          Spacer(),
          ActionButton(
            label: 'Sign up',
            onPress: () {},
          )
        ],
      ),
    );
  }
}
