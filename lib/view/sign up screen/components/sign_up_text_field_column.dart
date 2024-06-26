import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/sign%20up%20screen/components/emailValidation.dart';
import 'package:quotify/view/sign%20up%20screen/components/passwordValidation.dart';

import '../sign_up_screen.dart';

Column textFieldColumn({
  required BuildContext context,
}) {
  return Column(
    children: [
      textFormField(
          context: context,
          controller: txtSignUpName,
          // errorText: 'Please Enter valid name!',
          hintText: 'Name',
          iconData: CupertinoIcons.person,
          textInputType: TextInputType.text),
      textFormField(
          context: context,
          controller: txtSignUpEmail,
          // errorText: 'Please Enter valid email!',
          hintText: 'Email',
          iconData: CupertinoIcons.mail,
          textInputType: TextInputType.emailAddress),
      textFormField(
          context: context,
          controller: txtSignUpPassword,
          // errorText: 'Please Enter valid password!',
          hintText: 'Password',
          iconData: CupertinoIcons.padlock,
          textInputType: TextInputType.text),
      textFormField(
        context: context,
        controller: txtSignUpConfirmPassword,
        // errorText: 'Please Enter correct password!',
        hintText: 'Confirm password',
        iconData: CupertinoIcons.padlock,
        textInputType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
      ),
    ],
  );
}

Row textFormField(
    {required BuildContext context,
    IconData? iconData,
    required TextEditingController controller,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
    required String hintText,}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        iconData,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      const SizedBox(
        width: 14,
      ),
      Expanded(
        child: SizedBox(
          height: 60,
          child: TextFormField(
            controller: controller,
            cursorColor: Theme.of(context).colorScheme.onSurface,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus!.unfocus();
            },
            validator: (value) {
              if (hintText == 'Name') {
                return value!.isEmpty || value == '' ? 'Please enter name!' : null;
              } else if (hintText == 'Email') {
                return validateEmail(value);
              } else if (hintText == 'Password') {
                return validatePassword(value);
              } else if (hintText == 'Confirm password') {
                return txtSignUpPassword.text != value ? 'Password must be same!' : null;
              } else {
                return null;
              }

            },
            textInputAction: textInputAction ?? TextInputAction.next,
            keyboardType: textInputType ?? TextInputType.text,
            //DECORATION
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.grey),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 0.5, color: Theme.of(context).colorScheme.surface),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 1.2, color: Theme.of(context).colorScheme.surface),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}


