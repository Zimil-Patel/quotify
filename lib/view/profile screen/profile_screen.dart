import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotify/utils/global%20list/profile_list.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/profile%20screen/added%20screen/added_screen.dart';
import 'package:quotify/view/profile%20screen/collection%20screen/collection_screen.dart';
import 'package:quotify/view/profile%20screen/past%20quotes%20screen/past_quotes_screen.dart';
import 'package:quotify/view/profile%20screen/widgets%20screen/widgets_screen.dart';
import 'app icon/app_icon_screen.dart';
import 'components/setting_contanier.dart';

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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 20),
                  child: Icon(CupertinoIcons.clear,
                      color: Theme.of(context).colorScheme.onSurface),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  child: Text(
                    'Motivation',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 28, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, bottom: 10),
              child: Text('Settings',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
            ),
            Column(
              children: List.generate(
                profileList.length,
                (index) => CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => WidgetsScreen(),
                    ));
                  },
                  padding: EdgeInsets.zero,
                  child: settingContainer(context, index,
                      profileList[index]['name'], profileList[index]['icon']),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
              child: Text('Your Quotes',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
            ),
            Column(
              children: List.generate(
                profileList1.length,
                (index) => CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PastQuotesScreen()));
                  },
                  padding: EdgeInsets.zero,
                  child: settingContainer(context, index,
                      profileList1[index]['name'], profileList1[index]['icon']),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
