import 'package:flutter/material.dart';

Padding app_icons_subtitle(BuildContext context) {
  return Padding(
    padding:  const EdgeInsets.only(top: 40, left: 20, bottom: 10),
    child: Text('Change your app icon',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.w400, fontSize: 20,color: Colors.grey,)),
  );
}