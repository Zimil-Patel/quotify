import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../sign in screen/sign_in_screen.dart';

Row signInTextButton({required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Already have a create account ? ',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignInScreen(),
                ));
          },
          child: Text(
            'Sign In',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ))
    ],
  );
}