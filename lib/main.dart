import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/myThemedata.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/sura_details.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}

void main() {
  runApp(const MyApp());
}
