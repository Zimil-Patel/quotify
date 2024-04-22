import 'package:flutter/material.dart';
import 'package:quotify/utils/models/theme_model.dart';
import 'package:quotify/utils/models/user_model.dart';

double? height, width;

//INTRO SCREEN INDEX
int introScreenIndex = 0;
GlobalKey<FormState> formKey = GlobalKey<FormState>();
GlobalKey<FormState> signInformKey = GlobalKey<FormState>();
GlobalKey<FormState> addQuoteKey = GlobalKey<FormState>();

TextEditingController txtSignUpName = TextEditingController();
TextEditingController txtSignUpEmail = TextEditingController();
TextEditingController txtSignUpPassword = TextEditingController();
TextEditingController txtSignUpConfirmPassword = TextEditingController();


TextEditingController txtSignInEmail = TextEditingController();
TextEditingController txtSignInPassword = TextEditingController();

//ADD QUOTE CONTROLLERS
TextEditingController txtQuote = TextEditingController();
TextEditingController txtAuthor = TextEditingController();


UserProvider? userProvider;
ThemeProvider? themeProvider;


//LIST OF USERS
List users = [];
int userLen = 0;
int currentUser = 0;
bool isLoggedIn = false;

//day of the quote displayed
bool isDayOfQuoteDisplayed = false;


//CLEAR FIELDS
void clearField(){
  txtSignUpName.clear();
  txtSignUpEmail.clear();
  txtSignUpPassword.clear();
  txtSignUpConfirmPassword.clear();
  txtSignInEmail.clear();
  txtSignInPassword.clear();
}