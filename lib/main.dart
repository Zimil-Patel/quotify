import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/utils/models/text_theme_model.dart';
import 'package:quotify/utils/models/theme_model.dart';
import 'package:quotify/utils/models/user_model.dart';
import 'package:quotify/utils/theme/dark_theme.dart';
import 'package:quotify/utils/theme/light_theme.dart';
import 'package:quotify/view/home%20screen/home_screen.dart';
import 'package:quotify/view/intro%20screen/intro_screen.dart';
import 'package:quotify/view/profile%20screen/general%20screen/person%20details/person_details_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black12, // navigation bar color
    statusBarColor: Colors.black12, // status bar color
  ));

  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: const QuotifyApp()));
}

class QuotifyApp extends StatelessWidget {
  const QuotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of<UserProvider>(context, listen: true);
    themeProvider = Provider.of<ThemeProvider>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider!.getThemeMode(),
      home: const IntroScreen(),
    );
  }
}