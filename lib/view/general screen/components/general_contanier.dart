import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

Padding GeneralContainer(
    BuildContext context, int index, String name, IconData icon, int length) {
  return Padding(
    padding: const EdgeInsets.only(top: 4, left: 15, right: 15),
    child: Container(
      height: height! / 14,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: index == 0 ? const Radius.circular(15) : const Radius
                .circular(0),
            topRight: index == 0 ? const Radius.circular(15) : const Radius
                .circular(0),
            bottomLeft: index == length - 1 ? const Radius.circular(15) : const Radius
                .circular(0),
            bottomRight:
            index == length - 1 ? const Radius.circular(15) : const Radius.circular(0)),
        color: Theme
            .of(context)
            .colorScheme
            .surface,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Icon(icon, color: Theme
                .of(context)
                .colorScheme
                .onSurface,),
          ),
          Text(name,
            style: Theme
                .of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 17, fontWeight: FontWeight.w500),),
          //Theme.of(context).textTheme.titleLarge,)
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.forward, color: Theme
                .of(context)
                .colorScheme
                .onSurface,),
          )
        ],
      ),
    ),
  );
}