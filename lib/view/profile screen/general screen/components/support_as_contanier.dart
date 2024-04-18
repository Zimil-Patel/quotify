import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/global list/general_list.dart';
import 'general_contanier.dart';

Column Supports_as_contanier(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
        child: Text(
          'Support As',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
        ),
      ),
      Column(
        children: List.generate(
          generalList2.length,
          (index) => CupertinoButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            child: GeneralContainer(
              context,
              index,
              generalList2[index]['name'],
              generalList2[index]['icon'],
              generalList2.length,
            ),
          ),
        ),
      ),
    ],
  );
}
