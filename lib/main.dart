import 'package:flutter/material.dart';
import 'package:launch_app/screen/details/detail_screen.dart';
import 'package:launch_app/screen/home/home_screen.dart';
import 'package:launch_app/screen/nav_screen.dart';

import 'screen/auth/auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
      ),
      initialRoute: NavScreen.id,
      routes: {
        NavScreen.id: (context) => NavScreen(),
        Auth.id: (context) => Auth(),
        HomeScreen.id: (context) => HomeScreen(),
        DetailScreen.id: (context) => DetailScreen()
      },
    );
  }
}
