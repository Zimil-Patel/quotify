import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';

SizedBox ownQuoteContainer(BuildContext context) {
  return SizedBox(
    height: height!/1.2,
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 17.0),
        child: Column(
          children: List.generate(userProvider!.ownQuoteList.length, (index) => Container(
            width: width,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4.5),
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    userProvider!.ownQuoteList[index].quote.toString(),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '${userProvider!.ownQuoteList[index].author! == '' ? '' : '-'} ${userProvider!.ownQuoteList[index].author!} - ${userProvider!.ownQuoteList[index].category!}',
                        style: Theme.of(context).textTheme.titleSmall
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        userProvider!.removeFromOwnQuoteList(index: index);
                      },
                      child:Icon(
                        CupertinoIcons.delete,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ),
      ),
    ),
  );
}