import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/view/sign%20in%20screen/sign_in_screen.dart';

import '../../../utils/global_variables.dart';

Padding signUpButton({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(top: 50.0, bottom: 20),
    child: Center(
      child: CupertinoButton(
        onPressed: () {
          if(formKey.currentState!.validate()){
            {
              Map map = {
                'name': txtSignUpName.text,
                'email': txtSignUpEmail.text,
                'pass': txtSignUpPassword.text,
              };
              users.add(map);
              userLen++;

                SnackBar snackBar = SnackBar(
                  duration: const Duration(seconds: 1),
                  content: Text(
                    'Registered Successfully!',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                clearField();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen(),));

            }
          } else {

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
            'Sign Up',
            style: Theme.of(context).textTheme.titleMedium,
          )),
        ),
      ),
    ),
  );
}


