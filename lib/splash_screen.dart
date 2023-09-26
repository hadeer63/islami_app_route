import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), SplashNavigator);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/splash_screen.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(),
      ],
    );
  }

  SplashNavigator() {
    Navigator.pushNamedAndRemoveUntil(
        context, HomeScreen.routeName, (route) => false);
  }
}
