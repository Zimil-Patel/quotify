import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/view/category%20screen/category_screen.dart';
import 'package:quotify/view/home%20screen/components/text_theme_bottom_model.dart';
import 'package:quotify/view/profile%20screen/profile_screen.dart';
import 'package:quotify/view/theme%20screen/theme_screen.dart';

import ' bottom_button_box.dart';
import '../../../utils/global_variables.dart';

Widget bottomNavigationBox(
    {required BuildContext context, required final VoidCallback toggle}) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
      child: Row(
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            pressedOpacity: 0.8,
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryScreen(),
                  ));
            },
            child: bottomBox(
                context: context,
                height: height! / 14,
                width: width! / 3,
                icon: CupertinoIcons.square_grid_2x2,
                name: '  General'),
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                pressedOpacity: 0.8,
                onPressed: () {
                  textThemeBottomSheet(context, toggle);
                },
                child: bottomBox(
                    context: context,
                    height: height! / 14,
                    width: width! / 6.5,
                    icon: CupertinoIcons.text_cursor,
                    name: ''),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                pressedOpacity: 0.8,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThemeScreen(),
                      ));
                },
                child: bottomBox(
                    context: context,
                    height: height! / 14,
                    width: width! / 6.5,
                    icon: CupertinoIcons.paintbrush,
                    name: ''),
              )),
          CupertinoButton(
            padding: EdgeInsets.zero,
            pressedOpacity: 0.8,
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ));
            },
            child: bottomBox(
                context: context,
                height: height! / 14,
                width: width! / 6.5,
                icon: CupertinoIcons.person,
                name: ''),
          ),
        ],
      ),
    ),
  );
}
