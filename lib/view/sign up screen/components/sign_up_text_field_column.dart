import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sign_up_screen.dart';

Column textFieldColumn({
  required BuildContext context,
}) {
  return Column(
    children: [
      textFormField(
          context: context,
          controller: dumy,
          errorText: 'Please Enter valid name!',
          hintText: 'Name',
          iconData: CupertinoIcons.person,
          textInputType: TextInputType.text),
      textFormFieldemail(
          context: context,
          controller: txtmail,
          errorText: 'Please Enter valid email!',
          hintText: 'Email',
          iconData: CupertinoIcons.mail,
          textInputType: TextInputType.emailAddress),
      textFormFieldepwd(
          context: context,
          controller: txtpwd,
          errorText: 'Please Enter valid password!',
          hintText: 'Password',
          iconData: CupertinoIcons.padlock,
          textInputType: TextInputType.text),
      textFormField(
        context: context,
        controller: dumy,
        errorText: 'Please Enter correct password!',
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
    required String hintText,
    required String errorText}) {
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
              if (value!.isEmpty || value == '') {
                errorText;
              } else {
                null;
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
Row textFormFieldemail(
    {required BuildContext context,
    IconData? iconData,
    required TextEditingController controller,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
    required String hintText,
    required String errorText}) {
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
              if (value!.isEmpty || value == '') {
                var g = '';
                var gmail = 'moc.liamg@';
                var gmai = 0;
                var sepcialChecking = 0;


                g = txtmail.text;
                var len = g.length;
                var k = 0;
                if (len >= 11) {
                  for (var j = len - 1; j > len - 11; j--) {
                    if (g[j] != gmail[k]) {
                      gmai = 1;
                    }
                    k++;
                  }
                  if (gmai == 0) {
                    for (var j = 0; j < len - 11; j++) {
                      if ((g.codeUnitAt(j) >= 33 && g.codeUnitAt(j) <= 47) ||
                          (g.codeUnitAt(j) >= 58 && g.codeUnitAt(j) <= 64)) {
                        sepcialChecking = 1;
                      }
                    }
                    if (sepcialChecking == 0) {

                    } else {
                      'enter the not special character?';
                    }
                  }
                } else {
                  'enter the gmail id?';
                }
              } else {
                null;
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
Row textFormFieldepwd(
    {required BuildContext context,
    IconData? iconData,
    required TextEditingController controller,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
    required String hintText,
    required String errorText}) {
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
              if (value!.isEmpty || value == '') {
                var upparcaseChecking = 0;
                var lowercaseChecking = 0;
                var numberChecking = 0;
                var sepcialCharcterChecking = 0;
                var len = txtpwd.text.length;
                if (len >= 8 && len <= 32) {
                  for (var i = 0; i < len; i++) {
                    if (txtpwd.text.codeUnitAt(i) >= 65 && txtpwd.text.codeUnitAt(i) <= 90) {
                      upparcaseChecking = 1;
                    }
                  }
                  if (upparcaseChecking == 1) {
                    for (var i = 0; i < len; i++) {
                      if (txtpwd.text.codeUnitAt(i) >= 97 && txtpwd.text.codeUnitAt(i) <= 122) {
                        lowercaseChecking = 1;
                      }
                    }
                    if (lowercaseChecking == 1) {
                      for (var i = 0; i < len; i++) {
                        if (txtpwd.text.codeUnitAt(i) >= 48 && txtpwd.text.codeUnitAt(i) <= 57) {
                          numberChecking = 1;
                        }
                      }
                      if (numberChecking == 1) {
                        for (var i = 0; i < len; i++) {
                          if ((txtpwd.text.codeUnitAt(i) >= 33 && txtpwd.text.codeUnitAt(i) <= 47) ||
                              (txtpwd.text.codeUnitAt(i) >= 58 && txtpwd.text.codeUnitAt(i) <= 64)) {
                            sepcialCharcterChecking = 1;
                          }
                        }
                        if (sepcialCharcterChecking == 1) {
                        } else {
                         'enter the special character?';
                        }
                      } else {
                        'enter the number?';
                      }
                    } else {
                      'enter the lower case?';
                    }
                  } else {
                    'enter the upper case?';
                  }
                } else {
                  'enter the minimum 8 password & maximum 32 password?';
                }
              } else {
                null;
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
TextEditingController txtmail = TextEditingController();
TextEditingController txtpwd = TextEditingController();
