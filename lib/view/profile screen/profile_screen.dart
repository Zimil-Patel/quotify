import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global%20list/profile_list.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/home%20screen/home_screen.dart';
import 'package:quotify/view/profile%20screen/components/profile_head.dart';
import 'package:quotify/view/profile%20screen/components/settings_title.dart';
import 'components/head_name.dart';
import 'components/setting_contanier.dart';
import 'components/settings_options.dart';
import 'components/your_quotes_options.dart';
import 'components/your_quotes_title.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            profile_head(context,'Profile'),

            //SETTING TITLE
            setting_title(context),

            //SETTING OPTION
            setting_option(context),

            //YOUR QUOTES TITLE
            your_quotes_title(context),

            //YOUR QUTOES OPTION
            your_quotes_option(context),
          ],
        ),
      ),
    );
  }
}
