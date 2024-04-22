import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/profile%20screen/general%20screen/chnage%20theme%20screen/change_theme_screen.dart';
import 'package:quotify/view/profile%20screen/general%20screen/person%20details/person_details_screen.dart';
import 'package:quotify/view/sign%20in%20screen/sign_in_screen.dart';

import '../../../../utils/global list/general_list.dart';
import 'general_contanier.dart';

Column Make_it_your_contanier(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
        child: Text('Make It Yours',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
      ),
      ...List.generate(
        generalList.length,
            (index) => CupertinoButton(
          onPressed: () {
            if(index == 4)
              Navigator.push(context, MaterialPageRoute(builder: (context) => ThemeChangeScreen(),));
            else if(index == 2){

              if(isLoggedIn){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PersonDetailsScreen(),));
              } else {
                showSignInAlertDialog(context);
              }

            }

          },
          padding: EdgeInsets.zero,
          child: GeneralContainer(context, index, generalList[index]['name'],
              generalList[index]['icon'], generalList.length),
        ),
      )
    ],
  );
}


Future<void> showSignInAlertDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button to dismiss dialog
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Sign In Required'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('You need to sign in to continue.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Sign In', style: Theme.of(context).textTheme.bodySmall,),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen(),));
            },
          ),
          TextButton(
            child: Text('Later', style: Theme.of(context).textTheme.bodySmall),
            onPressed: () {
              Navigator.of(context).pop(); // Close the alert dialog
            },
          ),
        ],
      );
    },
  );
}