import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:quotify/utils/global_variables.dart';


import 'components/ bottom_button_box.dart';
import 'components/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          PageView(
            reverse: true,
            padEnds: false,
            scrollDirection: Axis.vertical,
            children: List.generate(
                reel.length,
                (index) => Container(
                      height: height,
                      width: width,
                      color: reel[index],
                    )),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 150),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Icon(
                        CupertinoIcons.heart,
                        size: 55,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 100),
                      child: Icon(
                        CupertinoIcons.share,
                        size: 55,
                      ),
                    ),
                  ],
                )),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: bottomNavigationBox(context)),
          // buildSizedBox(
          //   h1: 100,
          // ),
        ],
      ),
    );
  }
}


List<Color> reel = [
  Colors.green,
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.grey,
  Colors.blueGrey,
  Colors.purple,
];
