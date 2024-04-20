import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';

SizedBox favorites_quotes_author(BuildContext context) {
  return SizedBox(
    height: height!/1.2,
    child: SingleChildScrollView(
      child: Column(
        children: List.generate(userProvider!.favouriteQuoteList!.length, (index) => Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Container(
            width: width,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    userProvider!.favouriteQuoteList![index].quote.toString(),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10, left: 10, top: 5),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          '${userProvider!.favouriteQuoteList![index].author! == '' ? '' : '-'} ${userProvider!.favouriteQuoteList![index].author!} - ${userProvider!.favouriteQuoteList![index].category!}',
                          style: Theme.of(context).textTheme.titleSmall
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          userProvider!.toggleFavourite(
                              userProvider!.globalQuoteList![index]);
                        },
                        child:Icon(
                            CupertinoIcons.delete
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    ),
  );
}