import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/global_variables.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image:DecorationImage(image:  AssetImage('assets/imges/intro imges/intro1.png'))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Container(width: width!/1.5,child: Text('Welcome to daily Motivation',textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 30),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: width!/1.3,child: Text('Cultivate a positive mindset, overcome challenges and stay focused on your aspirations.',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,)),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                    },
                    child: Container(
                      height: 48,
                      width: width! / 1.8,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Center(
                          child: Text(
                            'Continue',
                            style: Theme.of(context).textTheme.titleMedium
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class introscreen1 extends StatefulWidget {
  const introscreen1({super.key});

  @override
  State<introscreen1> createState() => _introscreen1State();
}

class _introscreen1State extends State<introscreen1> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage('assets/imges/intro imges/intro2.png'))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Container(width: width!/1,child: Text('Reframe your mind and encourage your growth',textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 28),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: width!/1.4,child: Text('Learn to think positively, stay focused, and remind yourself of your inherent worth and potential',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,)),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                    },
                    child: Container(
                      height: 48,
                      width: width! / 1.8,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Center(
                          child: Text(
                              'Continue',
                              style: Theme.of(context).textTheme.titleMedium
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class introscreen2 extends StatefulWidget {
  const introscreen2({super.key});

  @override
  State<introscreen2> createState() => _introscreen2State();
}

class _introscreen2State extends State<introscreen2> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage('assets/imges/intro imges/intro3.jpeg'))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Container(width: width!/1,child: Text('Achieve your goals and stay productive',textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 28),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: width!/1.4,child: Text('Overcome procrastination and boost your productivity by reminding yourself of the importance of taking action.',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,)),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                    },
                    child: Container(
                      height: 48,
                      width: width! / 1.8,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Center(
                          child: Text(
                              'Continue',
                              style: Theme.of(context).textTheme.titleMedium
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


