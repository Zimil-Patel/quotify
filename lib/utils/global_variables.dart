import 'package:flutter/material.dart';

double? height, width;

//INTRO SCREEN INDEX
int introScreenIndex = 0;
GlobalKey<FormState> formKey = GlobalKey<FormState>();

//PAGE VIEW INDEX
int pageViewIndex = 0;

TextEditingController txtSignUpName = TextEditingController();
TextEditingController txtSignUpEmail = TextEditingController();
TextEditingController txtSignUpPassword = TextEditingController();
TextEditingController txtSignUpConfirmPassword = TextEditingController();