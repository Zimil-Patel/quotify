import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotify/view/profile%20screen/components/head_name.dart';

import '../../../utils/global_variables.dart';
import 'components/head_of_screen.dart';

class AddedScreen extends StatefulWidget {
  const AddedScreen({super.key});

  @override
  State<AddedScreen> createState() => _AddedScreenState();
}

class _AddedScreenState extends State<AddedScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [

          //HEAD OF ADD SCREEN
          head_of_added(context),

          //NULL ADDED TITLE
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: width! / 1.2,
                    child: Text(
                      'You have n\'t added anything yet.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 27, fontWeight: FontWeight.w700),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                      width: width! / 1.2,
                      child: Text(
                        "Add your own interesting quotes to this list and never forget them.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 19, fontWeight: FontWeight.w400),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
