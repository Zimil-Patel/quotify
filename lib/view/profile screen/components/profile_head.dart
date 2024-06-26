import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home screen/home_screen.dart';

Padding profile_head(BuildContext context,String name) {
  return Padding(
    padding: const EdgeInsets.only(top: 60, left: 15),
    child: Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
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