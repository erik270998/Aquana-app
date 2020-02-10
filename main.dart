import 'package:flutter/material.dart';
import 'package:aquana_app/screens/login_screen.dart';
import 'package:aquana_app/screens/signup_screen.dart';
import 'package:aquana_app/screens/home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'aquana',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}



