import 'package:flutter/material.dart';

Padding your_quotes_title(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
    child: Text('Your Quotes',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
  );
}