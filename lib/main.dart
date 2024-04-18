import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotify/utils/theme/dark_theme.dart';
import 'package:quotify/utils/theme/light_theme.dart';
import 'package:quotify/view/add%20screen/add_screen.dart';
import 'package:quotify/view/category%20screen/category_screen.dart';
import 'package:quotify/view/home%20screen/home_screen.dart';
import 'package:quotify/view/sign%20in%20screen/sign_in_screen.dart';
import 'package:quotify/view/sign%20up%20screen/sign_up_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
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
      home: CategoryScreen(),
    );
  }
}


