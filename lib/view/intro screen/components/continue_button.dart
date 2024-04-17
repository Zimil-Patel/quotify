import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/global_variables.dart';
import '../../sign up screen/sign_up_screen.dart';

Align continueButton(
    {required BuildContext context, required final VoidCallback toggleState}) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          if (introScreenIndex < 2) {
            introScreenIndex++;
          } else {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const SignUpScreen(),
            ));
          }
          toggleState();
        },
        child: Container(
          height: 48,
          width: width! / 1.8,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Center(
              child: Text('Continue',
                  style: Theme.of(context).textTheme.titleMedium)),
        ),
      ),
    ),
  );
}
