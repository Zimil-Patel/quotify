import 'package:flutter/material.dart';
import '../../utils/global_variables.dart';
import 'components/continue_button.dart';
import 'components/intro_screen_one.dart';
import 'components/intro_screen_three.dart';
import 'components/intro_screen_two.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  void toggleState(){
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Center(
          child: Stack(
            children: [
              IndexedStack(
                index: introScreenIndex,
                children: [

                  //INTRO SCREEN ONE DESCRIPTION AND IMAGE
                  introScreenOne(context),

                  //INTRO SCREEN TWO DESCRIPTION AND IMAGE
                  introScreenTwo(context),

                  //INTRO SCREEN THREE DESCRIPTION AND IMAGE
                  introScreenThree(context),

                ],
              ),
              //CONTINUE BUTTON TO GO NEXT INTRO SCREEN
              continueButton(context: context, toggleState: toggleState),
            ],
          )
      ),
    );
  }


}







