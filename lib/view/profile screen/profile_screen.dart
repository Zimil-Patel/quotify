import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global%20list/profile_list.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/profile%20screen/past%20quotes%20screen/past_quotes_screen.dart';
import 'package:quotify/view/profile%20screen/widgets%20screen/widgets_screen.dart';
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
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 15),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      CupertinoIcons.clear,
                      size: 28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Profile',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 30, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
              child: Text('Settings',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
            ),
            Column(
              children: List.generate(
                profileList.length,
                (index) => settingContainer(context, index,
                    profileList[index]['name'], profileList[index]['icon'], true),
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
                (index) => settingContainer(context, index,
                    profileList1[index]['name'], profileList1[index]['icon'], false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
