import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';
import '../../components/head_name.dart';

Row head_of_added(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      head_title(context, 'Added'),
      Padding(
        padding: const EdgeInsets.only(top: 58.0),
        child: CupertinoButton(
          child: Container(
              height: height! / 25,
              width: width!/5,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSurface,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                'Add',textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              )),
          onPressed: () {},
        ),
      )
    ],
  );
}