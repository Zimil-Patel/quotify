import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//LIGHT THEME DATA
ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: CupertinoColors.white,
  brightness: Brightness.light,
  //TEXT DATA
  textTheme: const TextTheme(
    titleMedium: TextStyle(
        color: CupertinoColors.white,
        fontWeight: FontWeight.bold), //FOR BOX TITLE
    titleLarge: TextStyle(
        color: CupertinoColors.black, fontWeight: FontWeight.w900), // FOR TITLE
    titleSmall: TextStyle(
        color: Color(0xff141b25),
        fontWeight: FontWeight.w300), //FOR CATEGORY NAME
    bodyMedium: TextStyle(
        color: CupertinoColors.black, fontWeight: FontWeight.w700),
    bodySmall: TextStyle(
        color: Color(0xff242d3c), fontWeight: FontWeight.w700),//FOR YOU
  ),

  colorScheme: const ColorScheme.light(
    primary: CupertinoColors.white,
    secondary: Color(0xff242d3c),
    surface: Color(0xffd4d6dc),
    onSurface: Colors.black,
  ),
);
