import 'package:flutter/material.dart';
import 'package:quotify/utils/models/theme_model.dart';
import 'package:quotify/utils/models/user_model.dart';

double? height, width;

//INTRO SCREEN INDEX
int introScreenIndex = 0;
GlobalKey<FormState> formKey = GlobalKey<FormState>();

TextEditingController txtSignUpName = TextEditingController();
TextEditingController txtSignUpEmail = TextEditingController();
TextEditingController txtSignUpPassword = TextEditingController();
TextEditingController txtSignUpConfirmPassword = TextEditingController();

UserProvider? userProvider;
ThemeProvider? themeProvider;