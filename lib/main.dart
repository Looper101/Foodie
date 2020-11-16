import 'package:flutter/material.dart';
import 'package:launch_app/screen/home/home_screen.dart';

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
        primarySwatch: Colors.grey,
      ),
      initialRoute: Auth.id,
      routes: {
        Auth.id: (context) => Auth(),
        HomeScreen.id: (context) => HomeScreen()
      },
    );
  }
}
