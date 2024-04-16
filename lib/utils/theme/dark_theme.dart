//DARK THEME DATA
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xff22252a),
  brightness: Brightness.dark,
  //TEXT DATA
  textTheme: const TextTheme(
    titleMedium: TextStyle(
        color: Color(0xff141b25), fontWeight: FontWeight.bold), //FOR BOX TITLE
    titleLarge: TextStyle(
        color: CupertinoColors.white, fontWeight: FontWeight.w900), // FOR TITLE
    titleSmall: TextStyle(
        color: CupertinoColors.white,
        fontWeight: FontWeight.w300), //FOR CATEGORY NAME
    bodyMedium: TextStyle(
        color: CupertinoColors.white, fontWeight: FontWeight.w700), //FOR YOU
  ),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xff242d3c),
    surface: Color(0xff344050),
  ),
);
