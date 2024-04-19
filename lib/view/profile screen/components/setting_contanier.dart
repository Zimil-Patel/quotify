import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/view/profile%20screen/app%20icon/app_icon_screen.dart';
import 'package:quotify/view/profile%20screen/collection%20screen/collection_screen.dart';
import 'package:quotify/view/profile%20screen/favorites%20screen/favorites_screen.dart';
import 'package:quotify/view/profile%20screen/general%20screen/general_screen.dart';
import 'package:quotify/view/profile%20screen/past%20quotes%20screen/past_quotes_screen.dart';
import 'package:quotify/view/profile%20screen/widgets%20screen/widgets_screen.dart';

import '../../../utils/global_variables.dart';

settingContainer(BuildContext context, int index, String t1, IconData i1, bool isSettingList) {
  return CupertinoButton(
    padding: EdgeInsets.zero,
    onPressed: () {
      if(isSettingList){
        switch (index) {
          case 0:
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GeneralScreen(),
                ));
            break;
          case 1:
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AppIconScreen(),
                ));
            break;
          case 2:
            break;
          case 3:
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WidgetsScreen(),
                ));
            break;
        }
      } else {
        switch (index) {
          case 0:
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CollectionScreen(),
                ));
            break;
          case 1:
            break;
          case 2:
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PastQuotesScreen(),
                ));
            break;
          case 3:
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavoritesScreen(),
                ));
            break;
        }
      }

    },
    child: Padding(
      padding: const EdgeInsets.only(top: 4, left: 15, right: 15),
      child: Container(
        height: height! / 14,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: index == 0
                  ? const Radius.circular(15)
                  : const Radius.circular(0),
              topRight: index == 0
                  ? const Radius.circular(15)
                  : const Radius.circular(0),
              bottomLeft: index == 3
                  ? const Radius.circular(15)
                  : const Radius.circular(0),
              bottomRight: index == 3
                  ? const Radius.circular(15)
                  : const Radius.circular(0)),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Icon(
                i1,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Text(
              t1,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            //Theme.of(context).textTheme.titleLarge,)
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(CupertinoIcons.forward,
                  color: Theme.of(context).colorScheme.onSurface),
            )
          ],
        ),
      ),
    ),
  );
}
