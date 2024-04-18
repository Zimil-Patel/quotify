import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';

Padding ActivateButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15,right: 15,bottom: 30),
    child: Container(
      height: height! / 14,
      width: width,
      decoration: BoxDecoration(
          color: Theme
              .of(context)
              .colorScheme
              .onSurface,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Text("Activate",style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 25,),)),
    ),
  );
}