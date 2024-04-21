import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/utils/models/theme_model.dart';

import '../../components/head_name.dart';

class ThemeChangeScreen extends StatelessWidget {
  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of<ThemeProvider>(context, listen: true);
    return Scaffold(
      body: Column(
        children: [
          //HEAD OF SCREEN
          head_title(context, 'Change Theme'),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Select theme mode  :', style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500
                ),),
              ),
              SizedBox(
                height: 20,
              ),
              RadioListTile(
                activeColor: Theme.of(context).colorScheme.onSurface,
                title: Text('Light Theme'),
                value: ThemeMode.light,
                groupValue: themeProvider!.getThemeMode(),
                onChanged: (value) {
                  themeProvider!.setThemeMode(value as ThemeMode);
                },
              ),
              RadioListTile(
                activeColor: Theme.of(context).colorScheme.onSurface,
                title: Text('Dark Theme'),
                value: ThemeMode.dark,
                groupValue: themeProvider!.getThemeMode(),
                onChanged: (value) {
                  themeProvider!.setThemeMode(value as ThemeMode);
                },
              ),
              RadioListTile(
                activeColor: Theme.of(context).colorScheme.onSurface,
                title: Text('System Theme'),
                value: ThemeMode.system,
                groupValue: themeProvider!.getThemeMode(),
                onChanged: (value) {
                  themeProvider!.setThemeMode(value as ThemeMode);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
