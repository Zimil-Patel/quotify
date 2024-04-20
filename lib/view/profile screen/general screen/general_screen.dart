import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global%20list/general_list.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/profile%20screen/components/head_name.dart';
import 'components/accounts_contanier.dart';
import 'components/general_contanier.dart';
import 'components/help_contanier.dart';
import 'components/make_it_your_contanier.dart';
import 'components/other_contanier.dart';
import 'components/support_as_contanier.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //HEAD TITLE
            head_title(context, 'General'),

            //MAKE IT YOURS
            Make_it_your_contanier(context),

            //ACCOUNTS
            Account_us_contanier(context),

            //SUPPPORT AS
            Supports_as_contanier(context),

            //HELP
            Help_contanier(context),

            //OTHER
            Others_contanier(context),
          ],
        ),
      ),
    );
  }
}
