import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

Padding signUpButton({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(top: 50.0, bottom: 20),
    child: Center(
      child: CupertinoButton(
        onPressed: () {},
        child: Container(
          height: 60,
          width: width! / 1.5,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(40)),
          ),
          child: Center(
              child: Text(
            'Sign Up',
            style: Theme.of(context).textTheme.titleMedium,
          )),
        ),
      ),
    ),
  );
}
