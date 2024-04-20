import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';

Padding widget_subtitle(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
    child: SizedBox(
      width: width!/1.2,
      child: Text('How to add a widget to your Home Screen',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.grey,
          )),
    ),
  );
}