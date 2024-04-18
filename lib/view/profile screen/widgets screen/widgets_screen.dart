import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({super.key});

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15),
            child: Row(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    CupertinoIcons.clear,
                    size: 28,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Widgets',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 30, fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
            child: Text('How to add a widget to your Home Screen',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.grey,
                    )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Container(
              height: height! / 7,
              width: width,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      'Step 1',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 5),
                    child: Divider(),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'On Your Phones HomeScreen,touch and hold an\n empty space where you want to add a widgets ',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Container(
              height: height! / 9,
              width: width,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      'Step 2',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 5),
                    child: Divider(),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Tap Widgets',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Container(
              height: height! / 3.2,
              width: width,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      'Step 3',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 5),
                    child: Divider(),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Look for the Motivation Widgets in the list and\nselect the one you are interested in. ',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 10, right: 10),
                    child: Container(
                      height: height! / 6,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        'Positive mind,Positive vibes,\n              Positive life',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                                fontWeight: FontWeight.w400, fontSize: 25,color: Colors.white),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Container(
              height: height! / 9,
              width: width,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      'Step 4',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 5),
                    child: Divider(),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Customize Your Widgets to your taste and add it.',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
