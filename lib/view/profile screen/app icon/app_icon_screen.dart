import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/view/profile%20screen/app%20icon/components/step2_contanier.dart';

import '../../../utils/global_variables.dart';
import 'components/Activate_Button.dart';
import 'components/step1_contanier.dart';

class AppIconScreen extends StatefulWidget {
  const AppIconScreen({super.key});

  @override
  State<AppIconScreen> createState() => _AppIconScreenState();
}

class _AppIconScreenState extends State<AppIconScreen> {
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
                  child: Text('App Icons',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 30, fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top: 40, left: 20, bottom: 10),
            child: Text('Change your app icon',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w400, fontSize: 20,color: Colors.grey,)),
          ),

          Step1Contanier(context),

          Step2Contanier(context),
          const Spacer(),

          ActivateButton(context)
        ],
      ),
    );
  }
}
