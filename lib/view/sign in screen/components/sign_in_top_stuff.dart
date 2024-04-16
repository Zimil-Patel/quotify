import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

Column signInTopStuff({required BuildContext context}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Text(
          'Sign In',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: 34, fontWeight: FontWeight.w700),
        ),
      ),

      //DIVIDER
      Container(
        height: 8,
        width: 110,
        color: Theme.of(context).colorScheme.surface,
      ),

      //SIGN UP DESCRIPTION
      Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 50),
        child: SizedBox(
            width: width! / 1.3,
            child: Text(
              'Please Sign In to your Account to Continue with App.',
              overflow: TextOverflow.clip,
              style: Theme.of(context).textTheme.titleSmall,
            )),
      ),
    ],
  );
}
