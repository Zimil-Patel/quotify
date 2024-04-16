import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/global_variables.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
TextEditingController dumy = TextEditingController();
class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SIGN UP TITLE TEXT
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text('Sign Up',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 34,
                    fontWeight: FontWeight.w700
                  ),),
                ),

                //DIVIDER
                Container(
                  height: 8,
                  width: 110,
                  color:Theme.of(context).colorScheme.surface,
                ),

                //SIGN UP DESCRIPTION
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 50),
                  child: SizedBox(width: width!/1.3,child: Text('Please Sign Up to your Account to Continue with App.',overflow:TextOverflow.clip,style: Theme.of(context).textTheme.titleSmall,)),
                ),

                //TEXT FORM FIELD OF USERNAME
                textFormField(context: context,controller: dumy ,errorText: 'Please Enter valid name!', hintText: 'Name', iconData: CupertinoIcons.person, textInputType: TextInputType.text),
                textFormField(context: context,controller: dumy ,errorText: 'Please Enter valid email!', hintText: 'Email', iconData: CupertinoIcons.mail, textInputType: TextInputType.emailAddress),
                textFormField(context: context,controller: dumy ,errorText: 'Please Enter valid password!', hintText: 'Password', iconData: CupertinoIcons.padlock, textInputType: TextInputType.text),
                textFormField(context: context,controller: dumy ,errorText: 'Please Enter valid password!', hintText: 'Confirm password', iconData: CupertinoIcons.padlock, textInputType: TextInputType.visiblePassword),

                //SIGNUP BUTTON
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 20),
                  child: Center(
                    child: CupertinoButton(
                      onPressed: (){},
                      child: Container(
                        height: 60,
                        width: width! / 1.5,
                        decoration: BoxDecoration(
                          color:Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: Theme.of(context).colorScheme.primary,),
                            )),
                      ),
                    ),
                  ),
                ),


                //SIGNUP JUST LOGIN
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have a create account ? ',style:Theme.of(context).textTheme.titleSmall,),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                        onPressed: () {
                    },
                        child: Text('Sign In',style:TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Theme.of(context).colorScheme.secondary,),))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row textFormField({required BuildContext context,IconData? iconData,required TextEditingController controller,  TextInputType? textInputType, TextInputAction? textInputAction,required String hintText, required String errorText}) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(iconData, color: Theme.of(context).colorScheme.onSurface,),
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
                          if(value!.isEmpty || value==''){
                            errorText;
                          }else{
                            null;
                          }
                        },
                        textInputAction: textInputAction ?? TextInputAction.next,
                        keyboardType: textInputType ?? TextInputType.text,
                        //DECORATION
                        decoration: InputDecoration(
                          hintText: hintText,
                          hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Colors.grey
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(width: 0.5, color: Theme.of(context).colorScheme.surface),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1.2, color: Theme.of(context).colorScheme.surface),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Theme.of(context).colorScheme.onSurface),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
  }
}