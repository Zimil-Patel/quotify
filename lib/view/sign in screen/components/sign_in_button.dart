import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/view/home%20screen/home_screen.dart';

import '../../../utils/global_variables.dart';

Padding signInButton({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(top: 100.0, bottom: 20),
    child: Center(
      child: CupertinoButton(
        onPressed: () {
          if (signInformKey.currentState!.validate()) {
            verifyAndLogin(context);
          }
        },
        child: Container(
          height: 60,
          width: width! / 1.5,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(40)),
          ),
          child: Center(
              child: Text(
            'Sign In',
            style: Theme.of(context).textTheme.titleMedium,
          )),
        ),
      ),
    ),
  );
}

void verifyAndLogin(BuildContext context) {
  bool isEmailFound = false;
  int foundAt = 0;
  String email = txtSignInEmail.text;
  String pass = txtSignInPassword.text;

  for (int i = 0; i <= userLen - 1; i++) {
    if (email == users[i]['email']) {
      isEmailFound = true;
      foundAt = i;
    }
  }

  if (isEmailFound) {
    if (pass == users[foundAt]['pass']) {
      currentUser = foundAt;
      clearField();
      isLoggedIn = true;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    } else {
      SnackBar snackBar = SnackBar(
        duration: const Duration(seconds: 1),
        content: Text(
          'Incorrect password',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  if (!isEmailFound) {
    SnackBar snackBar = SnackBar(
      duration: const Duration(seconds: 1),
      content: Text(
        'Email is not registered!',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

