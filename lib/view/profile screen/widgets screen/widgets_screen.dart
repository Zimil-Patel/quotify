import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotify/view/profile%20screen/components/head_name.dart';

import '../../../utils/global_variables.dart';
import 'components/widget_step_1.dart';
import 'components/widget_step_2.dart';
import 'components/widget_step_3.dart';
import 'components/widget_step_4.dart';
import 'components/widget_sub_title.dart';

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
          //TITLE
          head_title(context,'Widgets'),
          SizedBox(
            height: height!/1.2,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SUB TITLE
                  widget_subtitle(context),

                  //STEP 1
                  widget_step1(context),

                  //STEP 2
                  widget_step2(context),

                  //STEP 3
                  widget_step3(context),

                  //STEP 4
                  widget_step4(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
