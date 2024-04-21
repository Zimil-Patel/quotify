import 'package:flutter/material.dart';
import 'package:quotify/utils/global_variables.dart';

Widget bottomBox(
    {required double height,
      required double width,
      required BuildContext context,
      required IconData icon,
      required String name}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(15)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}

Widget buildSizedBox({double? h1, double? w1}) {
  return SizedBox(
    height: height,
    width: width,
  );
}