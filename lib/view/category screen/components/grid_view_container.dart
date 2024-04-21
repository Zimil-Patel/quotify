import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global%20list/categories_list.dart';
import 'package:quotify/view/home%20screen/home_screen.dart';
import 'package:quotify/view/profile%20screen/added%20screen/added_screen.dart';
import 'package:quotify/view/profile%20screen/collection%20screen/collection_screen.dart';
import 'package:quotify/view/profile%20screen/favorites%20screen/favorites_screen.dart';
import '../../../utils/global_variables.dart';

Widget gridForCategories({required List list}) {
  return Padding(
    padding: const EdgeInsets.only(top: 12.0, bottom: 30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height! / 5.5,
          width: width,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 180,
            ),
            itemBuilder: (BuildContext context, int index) {
              return CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {

                  if(list == generalListOfCategory){
                     userProvider!.isForParticularCategories = false;
                    switch(index){
                      case 0:
                        userProvider!.refresh();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                        break;
                      case 1:
                        if(userProvider!.favouriteQuoteList!.isEmpty){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesScreen(),));
                        } else {
                          userProvider!.showFavouriteQuotes();
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                        }
                        break;
                      case 2:
                        if(userProvider!.myCollectionList.isEmpty){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CollectionScreen(),));
                        }
                        break;
                      case 3:
                        userProvider!.refresh();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                        break;
                      case 4:
                        if(userProvider!.ownQuoteList.isEmpty){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddedScreen(),));
                        } else {
                          userProvider!.showOwnQuotesList();
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                        }
                        break;

                    }

                  } else {
                    userProvider!.isForParticularCategories = true;
                    userProvider!.changeSelectedCategory(list[index]['name']);
                    userProvider!.updateData();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                  }


                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: index == 0 || index == 1 ? 10 : 1.5,
                      right: (list.length==4)?((index==list.length-2) || index==list.length-1)?10:1.5:index == list.length-1  ? 10 : 1.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: SizedBox(
                          width: width! / 4.4,
                          child: Text(list[index]['name'],
                              overflow: TextOverflow.clip,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w500, fontSize: 14)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Icon(
                          list[index]['icon'],
                          size: 30,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Column addFieldWithGridView({required BuildContext context, required String title, required List list}) {
  return Column(
    children: [
      titleOfCategory(context: context, title: title),
      gridForCategories(list: list),
    ],
  );
}

Align titleOfCategory({required BuildContext context, required String title}) {
  return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(),
      ));
}