import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/view/category%20screen/category_screen.dart';
import 'package:quotify/view/profile%20screen/profile_screen.dart';

import ' bottom_button_box.dart';

Widget bottomNavigationBox(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
    child: Row(
      children: [
        CupertinoButton(
          padding: EdgeInsets.zero,
          pressedOpacity: 0.8,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CategoryScreen(),
            ));
          },
          child: bottomBox(
              context: context,
              h1: 60,
              w1: 150,
              i1: CupertinoIcons.square_grid_2x2,
              t1: '  General'),
        ),
        const Spacer(),
        Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              pressedOpacity: 0.8,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container();
                  },
                );
              },
              child: bottomBox(
                  context: context,
                  h1: 60,
                  w1: 60,
                  i1: CupertinoIcons.text_cursor,
                  t1: ''),
            )),
        Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              pressedOpacity: 0.8,
              onPressed: () {},
              child: bottomBox(
                  context: context,
                  h1: 60,
                  w1: 60,
                  i1: CupertinoIcons.paintbrush,
                  t1: ''),
            )),
        CupertinoButton(
          padding: EdgeInsets.zero,
          pressedOpacity: 0.8,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen(),));
          },
          child: bottomBox(
              context: context,
              h1: 60,
              w1: 60,
              i1: CupertinoIcons.person,
              t1: ''),
        ),
      ],
    ),
  );
}
