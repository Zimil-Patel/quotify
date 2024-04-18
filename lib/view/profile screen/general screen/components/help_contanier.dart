import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/global list/general_list.dart';
import 'general_contanier.dart';

Column Help_contanier(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
        child: Text('Help',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
      ),
      Column(
        children: List.generate(
          generalList3.length,
              (index) => CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: GeneralContainer(
                  context,
                  index,
                  generalList3[index]['name'],
                  generalList3[index]['icon'],
                  generalList3.length)),
        ),
      ),
    ],
  );
}