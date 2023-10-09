import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static Color darkPrimary = Color(0xFF141A2E);
  static Color yellow = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: Colors.white,
          secondary: blackColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: primaryColor,
          onBackground: blackColor,
          surface: primaryColor,
          onSurface: Colors.white),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 20, fontWeight: FontWeight.w400),
        bodyMedium: GoogleFonts.elMessiri(
            color: Color(0xFFFFFFFF),
            fontSize: 25,
            fontWeight: FontWeight.w700),
        bodyLarge: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: primaryColor),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          //backgroundColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: darkPrimary,
          onPrimary: Colors.white,
          secondary: yellow,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: yellow,
          onBackground: Colors.white,
          surface: darkPrimary,
          onSurface: Colors.white),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            color: yellow, fontSize: 20, fontWeight: FontWeight.w400),
        bodyMedium: GoogleFonts.elMessiri(
            color: yellow, fontSize: 25, fontWeight: FontWeight.w700),
        bodyLarge: GoogleFonts.elMessiri(
            color: Color(0xFFFFFFFF),
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: yellow,
          unselectedItemColor: Colors.white,
          backgroundColor: darkPrimary,
          showSelectedLabels: true,
          showUnselectedLabels: true));
}
