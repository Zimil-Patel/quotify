import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';

favouriteListNullMessage(BuildContext context) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: width!/1.2,child: Text('You do not have any favorites yet.',textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 27,fontWeight: FontWeight.w700),)),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(width: width!/1.2,child: Text("Keep track of the quotes you love by adding them to your favorites.",textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 19,fontWeight: FontWeight.w400),)),
        ),

      ],
    ),
  );
}