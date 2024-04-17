import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

Padding mixCategoryButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
    child: Container(
      height: height! / 18,
      width: width! / 0.4,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Text(
        "Mix Categories",
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontSize: 20, fontWeight: FontWeight.w400),
      )),
    ),
  );
}
