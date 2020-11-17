import 'package:flutter/material.dart';
import 'package:launch_app/constants.dart';

class DetailScreen extends StatelessWidget {
  static String id = 'DetailsScreen';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mediaQuery = MediaQuery.of(context);
    var _screenHeight = size.height;
    var _screenWidth = size.width;
    return Scaffold(
      backgroundColor: Pallete.bgColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            brightness: Brightness.dark,
            backgroundColor: Pallete.bgColor,
            floating: true,
            forceElevated: true,
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: CircleButton(onPress: () => Navigator.pop(context)),
            actions: <Widget>[
              ProfileAvatar(screenWidth: _screenWidth),
            ],
          ),
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({
    this.onPress,
    Key key,
  });

  final Function onPress;
  // final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Pallete.inactiveColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: Pallete.buttonColor,
        onPressed: onPress,
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key key,
    @required double screenWidth,
  })  : _screenWidth = screenWidth,
        super(key: key);

  final double _screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.01),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Pallete.inactiveColor.withOpacity(0.4),
      ),
      child: IconButton(icon: Icon(Icons.person_add), onPressed: () {}),
    );
  }
}
