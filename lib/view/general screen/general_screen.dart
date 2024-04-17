import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global%20list/general_lsit.dart';
import 'package:quotify/utils/global_variables.dart';
import '../../utils/global list/profile_list.dart';
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 70, left: 20),
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  child: Text(
                    'General',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 28, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Make_it_your_contanier(context),

            Account_us_contanier(context),

            Supports_as_contanier(context),

            Help_contanier(context),

            Others_contanier(context),
          ],
        ),
      ),
    );
  }
}
