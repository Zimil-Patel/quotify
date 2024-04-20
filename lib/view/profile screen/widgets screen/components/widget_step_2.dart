import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';

Padding widget_step2(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
    child: Container(
      height: height! /7,
      width: width,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Text(
              'Step 2',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10, left: 10, top: 5),
            child: Divider(),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'Tap Widgets',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ))
        ],
      ),
    ),
  );
}