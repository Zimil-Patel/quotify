import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global list/general_lsit.dart';
import 'general_contanier.dart';

Column Account_us_contanier(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
        child: Text('Accounts',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
      ),
      Column(
        children: List.generate(
          generalList1.length,
              (index) => CupertinoButton(
            onPressed: () {

            },
            padding: EdgeInsets.zero,
            child: GeneralContainer(
                context,
                index,
                generalList1[index]['name'],
                generalList1[index]['icon'],
                generalList1.length),
          ),
        ),
      ),
    ],
  );
}