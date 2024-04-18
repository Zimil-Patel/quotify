import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global%20list/general_list.dart';
import 'package:quotify/utils/global_variables.dart';
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
                    child: Text('General',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 30, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
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
