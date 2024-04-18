import 'package:flutter/cupertino.dart';

import ' bottom_button_box.dart';

Widget bottomNavigationBox(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20,left: 15,right: 15),
    child: Row(
      children: [
        CupertinoButton(
          padding: EdgeInsets.zero,
          pressedOpacity: 0.8,
          onPressed: () {},
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
          onPressed: () {},
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