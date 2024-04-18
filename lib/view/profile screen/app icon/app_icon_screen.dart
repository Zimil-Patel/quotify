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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 20),
                child: Icon(CupertinoIcons.arrow_left,
                    color: Theme.of(context).colorScheme.onSurface),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Text(
                  'App Icon',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 28, fontWeight: FontWeight.w700),
                ),
              ),
            ],
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
