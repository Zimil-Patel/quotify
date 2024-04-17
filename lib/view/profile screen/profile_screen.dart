import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotify/utils/global%20list/profile_list.dart';
import 'package:quotify/utils/global_variables.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 70, left: 20),
                child: Icon(
                  CupertinoIcons.clear,
                  color:Theme.of(context).colorScheme.onSurface
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Text(
                  'Motivation',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 28,fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20,bottom: 10),
            child: Text('Settings',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
          ),
          Column(
            children: List.generate(
              4,
                  (index) => CupertinoButton(
                    onPressed: () {

                    },

                    padding:EdgeInsets.zero,
                    child: settingContainer(context, index,
                    ProfileList[index]['name'], ProfileList[index]['icon']),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20,bottom: 10),
            child: Text('Your Quotes',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
          ),
          Column(
            children: List.generate(
              4,
              (index) => CupertinoButton(
                onPressed: () {

                },
                padding: EdgeInsets.zero,
                child: settingContainer(context, index,
                    ProfileList1[index]['name'], ProfileList1[index]['icon']),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding settingContainer(
      BuildContext context, int index, String t1, IconData i1) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 15, right: 15),
      child: Container(
        height: height! / 14,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: index == 0 ? const Radius.circular(15) : const Radius.circular(0),
              topRight: index == 0 ? const Radius.circular(15) : const Radius.circular(0),
              bottomLeft: index == 3 ? const Radius.circular(15) : const Radius.circular(0),
              bottomRight:
                  index == 3 ? const Radius.circular(15) : const Radius.circular(0)),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Row(
          children: [
            Padding(
              padding:  const EdgeInsets.all(15.0),
              child: Icon(i1,color:Theme.of(context).colorScheme.onSurface,),
            ),
            Text(t1,
                style:Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 17,fontWeight:FontWeight.w500),),
            //Theme.of(context).textTheme.titleLarge,)
             const Spacer(),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(CupertinoIcons.forward,color: Theme.of(context).colorScheme.onSurface,),
            )
          ],
        ),
      ),
    );
  }
}
