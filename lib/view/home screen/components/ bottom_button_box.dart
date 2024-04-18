import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomBox(
    {required double h1,
      required double w1,
      required BuildContext context,
      required IconData i1,
      String? t1}) {
  return Container(
    height: h1,
    width: w1,
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(15)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          i1,
          size: 30,
          color: Theme.of(context).colorScheme.surface,
        ),
        Text(
          "$t1",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}

Widget buildSizedBox({double? h1, double? w1}) {
  return SizedBox(
    height: h1,
    width: w1,
  );
}