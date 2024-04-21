import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';
import '../../home screen/home_screen.dart';

Padding head_title(BuildContext context,String name) {
  return Padding(
    padding: const EdgeInsets.only(top: 60, left: 15),
    child: Row(
      children: [
        IconButton(
          onPressed: () {
            txtQuote.clear();
            txtAuthor.clear();
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.clear,
            size: 28,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(name,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 30, fontWeight: FontWeight.w600)),
        ),
      ],
    ),
  );
}