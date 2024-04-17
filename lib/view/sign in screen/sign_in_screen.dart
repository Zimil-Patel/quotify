import 'package:flutter/material.dart';
import '../../utils/global_variables.dart';
import 'components/sign_in_button.dart';
import 'components/sign_in_text_filed_column.dart';
import 'components/sign_in_top_stuff.dart';
import 'components/sign_up_text_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                signInTopStuff(context: context),

                //TEXT FORM FIELD OF USERNAME
                signInTextFieldColumn(context: context),

                //SIGN IN BUTTON
                signInButton(context: context),

                //SIGNUP TEXT BUTTON
                signUpTextButton(context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
