
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global%20list/theme_list.dart';
import 'package:quotify/utils/global_variables.dart';

Widget ThemeTitle(BuildContext context) {
  return Row(
    children: [
      SizedBox(width: 20,),
      Icon(CupertinoIcons.clear),
      SizedBox(width: 20,),

      Text('Themes',style:Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 30,fontWeight: FontWeight.w500),),
    ],
  );
}


Widget title_name(BuildContext context,{required String name}) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(name,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 25,fontWeight: FontWeight.w400)),
      ),
      Spacer(),
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: Text('View All',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15,fontWeight: FontWeight.w300)),
      ),
    ],
  );
}

Padding category_grid_box(int c,{required String name}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 14.0),
    child: SizedBox(
      height: height! / 4.9,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: c,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
            mainAxisExtent: 110,
            childAspectRatio: 50 / 130),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(
                left: index == 0 ? 10 : 1.5,
                right: index == 9 ? 10 : 1.5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color:(name=='color')?image[name][index]: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image:(name=='color')? AssetImage(''):AssetImage(image[name][index]),fit: BoxFit.cover)
            ),
          );
        },
      ),
    ),
  );
}