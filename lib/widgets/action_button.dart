import 'package:flutter/material.dart';

import 'package:launch_app/constants.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key key,
    this.label,
    this.onPress,
  }) : super(key: key);

  final String label;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mediaQuery = MediaQuery.of(context);
    var _screenHeight = size.height;
    var _screenWidth = size.width;
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: double.infinity,
        height: _screenHeight * 0.07,
      ),
      textStyle: TextStyle(color: Pallete.textColor),
      elevation: 0.0,
      fillColor: Pallete.buttonColor,
      splashColor: Pallete.buttonColor.withOpacity(0.8),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(13)),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline6.copyWith(
              color: Pallete.textColor,
            ),
      ),
      onPressed: onPress,
    );
  }
}
