import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global list/general_lsit.dart';
import 'general_contanier.dart';

Column Make_it_your_contanier(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
        child: Text('Make It Yours',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
      ),
      ...List.generate(
        generalList.length,
            (index) => CupertinoButton(
          onPressed: () {

          },
          padding: EdgeInsets.zero,
          child: GeneralContainer(context, index, generalList[index]['name'],
              generalList[index]['icon'], generalList.length),
        ),
      )
    ],
  );
}