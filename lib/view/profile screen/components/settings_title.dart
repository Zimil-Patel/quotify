import 'package:flutter/material.dart';

Padding setting_title(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
    child: Text('Settings',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
  );
}