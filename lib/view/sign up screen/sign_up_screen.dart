import 'package:flutter/material.dart';
import '../../utils/global_variables.dart';
import 'components/sign_in_text_button.dart';
import 'components/sign_up_button.dart';
import 'components/sign_up_text_field_column.dart';
import 'components/sign_up_top_stuff.dart';

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
                signUpTopStuff(context: context),

                //TEXT FORM FIELD OF USERNAME
                textFieldColumn(context: context),

                //SIGNUP BUTTON
                signInButton(context: context),

                //SIGN IN TEXT BUTTON
                signInTextButton(context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
