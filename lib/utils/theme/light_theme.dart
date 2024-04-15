import 'package:flutter/material.dart';

//LIGHT THEME DATA
ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xffffffff),
  brightness: Brightness.light,
  //TEXT DATA
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 12,
      color: Colors.blue
    ),
    bodyMedium: TextStyle(
        color: Color(0xff9d9fa1)
    ),
    titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w900
    ),
  ),


  colorScheme: const ColorScheme.light(
    primary: Color(0xffffffff),
    secondary: Color(0xffffffff),
    surface: Color(0xff22252a),
    onSurface: Colors.white,
    shadow: Colors.black26,
  ),
);
