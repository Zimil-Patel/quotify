import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotify/utils/theme/dark_theme.dart';
import 'package:quotify/utils/theme/light_theme.dart';
import 'package:quotify/view/home%20screen/home_screen.dart';
import 'package:quotify/view/profile%20screen/profile_screen.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black12, // navigation bar color
    statusBarColor: Colors.black12, // status bar color
  ));
  runApp(const QuotifyApp());
}


class QuotifyApp extends StatelessWidget {
  const QuotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: ProfileScreen()
    );
  }
}


