import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../sign up screen/sign_up_screen.dart';

Row signUpTextButton({required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Don’t have an account ? ',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ));
          },
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ))
    ],
  );
}
