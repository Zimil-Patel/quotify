import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global_variables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: height,
                width: width,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        CupertinoIcons.share_up,
                        size: 50,
                      ),
                      Icon(
                        CupertinoIcons.heart,
                        size: 50,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            pressedOpacity: 0.8,
                            onPressed: () {},
                            child: bottomBox(
                                context: context,
                                h1: 60,
                                w1: 150,
                                i1: CupertinoIcons.square_grid_2x2,
                                t1: '  General'),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: CupertinoButton(
                              padding: EdgeInsets.zero,
                              pressedOpacity: 0.8,
                              onPressed: () {},
                              child: bottomBox(
                                  context: context,
                                  h1: 60,
                                  w1: 60,
                                  i1: CupertinoIcons.paintbrush,
                                  t1: ''),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            pressedOpacity: 0.8,
                            onPressed: () {},
                            child: bottomBox(
                                context: context,
                                h1: 60,
                                w1: 60,
                                i1: Icons.person_2_outlined,
                                t1: ''),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget bottomBox(
    {required double h1,
      required double w1,
      required BuildContext context,
      required IconData i1,
      String? t1}) {
  return Container(
    height: h1,
    width: w1,
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(15)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          i1,
          size: 30,
          color: Theme.of(context).colorScheme.surface,
        ),
        Text(
          "$t1",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}