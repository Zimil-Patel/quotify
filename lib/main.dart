import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quotify/utils/theme/dark_theme.dart';
import 'package:quotify/utils/theme/light_theme.dart';
import 'package:quotify/utils/theme/theme_provider.dart';
import 'package:quotify/view/home%20screen/home_screen.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black12, // navigation bar color
    statusBarColor: Colors.black12, // status bar color
  ));
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(),)
      ],
      child: const QuotifyApp()));
}


class QuotifyApp extends StatelessWidget {
  const QuotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProviderTrue = Provider.of(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProviderTrue.getThemeMode(),
      home: const HomeScreen(),
    );
  }
}


