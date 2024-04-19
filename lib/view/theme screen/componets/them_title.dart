
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global%20list/theme_list.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/home%20screen/home_screen.dart';

Widget themeTitle(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 60, left: 15),
    child: Row(
      children: [
        IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
          },
          icon: const Icon(
            CupertinoIcons.clear,
            size: 28,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Themes',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 30, fontWeight: FontWeight.w600)),
        ),
      ],
    ),
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
            decoration:name=='color'? BoxDecoration(
                color: image[name][index],
                borderRadius: BorderRadius.circular(15),
            ):BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(image[name][index]),fit: BoxFit.cover)
            ),
          );
        },
      ),
    ),
  );
}