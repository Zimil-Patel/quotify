import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/view/profile%20screen/app%20icon/components/step2_contanier.dart';
import 'package:quotify/view/profile%20screen/components/head_name.dart';

import '../../../utils/global_variables.dart';
import 'components/Activate_Button.dart';
import 'components/app_icon_sub_title.dart';
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
          //HEAD OF APP ICON
          head_title(context, 'App Icons'),

          //SUB TITLE
          app_icons_subtitle(context),

          //STEP1
          Step1Contanier(context),

          //STEP2
          Step2Contanier(context),
          const Spacer(),

          //APP ICON BUTTOM
          ActivateButton(context)
        ],
      ),
    );
  }
}
