import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';

Padding Step2Contanier(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
    child: Container(
      height: height! / 6,
      width: width,
      decoration: BoxDecoration(
          color: Theme
              .of(context)
              .colorScheme
              .surface,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 10),
            child: Text('Step 2',style: Theme.of(context).textTheme.titleLarge,),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10,left: 10,top: 10),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10),
            child: Text('Reopen the app and go back to "Settings" and tap \n "App Icon".Tap to select your new app icon! ',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 17),),
          ),
        ],
      ),
    ),
  );
}