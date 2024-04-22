import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';
import '../../home screen/home_screen.dart';

continueAsGuestTextButton({required BuildContext context}) {
  return Center(child: TextButton(onPressed: (){
    isLoggedIn = false;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
  }, child: Text('Continue As Guest', style: Theme.of(context).textTheme.titleSmall!.copyWith(
    fontWeight: FontWeight.bold,
  ),)));
}