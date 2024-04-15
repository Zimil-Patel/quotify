import 'package:flutter/material.dart';

//DARK THEME DATA
ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xff22252a),
  brightness: Brightness.dark,
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


  colorScheme: const ColorScheme.dark(
    primary: Color(0xff22252a),
    secondary: Color(0xff2d3035),
    surface: Color(0xff3d3f44),
    onSurface: Colors.black,
    shadow: Colors.black26,
  ),
);

