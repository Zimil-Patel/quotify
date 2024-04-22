import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/view/sign%20in%20screen/sign_in_screen.dart';
import '../../../../utils/global list/general_list.dart';
import '../../../../utils/global_variables.dart';
import 'general_contanier.dart';

Column Account_us_contanier(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
        child: Text('Accounts',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
      ),
      Column(
        children: [CupertinoButton(
            onPressed: () {
              isLoggedIn = false;
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignInScreen(),));

            },
            padding: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.only(top: 1.5, left: 15, right: 15),
              child: Container(
                height: height! / 14,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme
                      .of(context)
                      .colorScheme
                      .surface,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Icon( isLoggedIn ? Icons.logout : CupertinoIcons.person_add, color: Theme
                          .of(context)
                          .colorScheme
                          .onSurface,),
                    ),
                    Text(isLoggedIn ? 'Log out' : 'Sign in',
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 17, fontWeight: FontWeight.w500),),
                    //Theme.of(context).textTheme.titleLarge,)
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(CupertinoIcons.forward, color: Theme
                          .of(context)
                          .colorScheme
                          .onSurface,),
                    )
                  ],
                ),
              ),
            ),
          ),]

      ),
    ],
  );
}