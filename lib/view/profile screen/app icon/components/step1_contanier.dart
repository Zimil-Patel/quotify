import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';
Padding Step1Contanier(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
    child: Container(
      height: height! / 7,
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
            padding: const EdgeInsets.only(top: 10,left: 10),
            child: Text('Step 1',style: Theme.of(context).textTheme.titleLarge,),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10,left: 10,top: 1),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 10),
            child: SizedBox(width: width!/1.2,child: Text('Click on "Activate" button below. This will automatically shut down the app',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 15),)),
          )
        ],
      ),
    ),
  );
}

