import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding screenTitleAndSearchIcon(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 60, left: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              CupertinoIcons.clear,
              size: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Categories',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 30, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Icon(
            CupertinoIcons.search,
            size: 30,
          ),
        )
      ],
    ),
  );
}