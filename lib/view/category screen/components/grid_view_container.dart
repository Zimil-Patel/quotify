import 'package:flutter/material.dart';
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
              return Container(
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
                      ),
                    )
                  ],
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