import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';

import '../../../utils/global list/font_color_list.dart';
import '../../../utils/global list/font_family_list.dart';
import '../../../utils/global_variables.dart';

Future<dynamic> textThemeBottomSheet(
    BuildContext context, final VoidCallback toggle) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => SizedBox(
      height: height!/2.5,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 11.0, horizontal: 20),
            child: Text(
              'Edit Your Text color',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    Colorlist.length,
                        (index) => InkWell(
                      onTap: () {
                        toggle();
                        (index == 0)
                            ? showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Pick your color'),
                              content: SizedBox(
                                height: height! / 1.5,
                                width: width! / 1.5,
                                child: ColorPicker(
                                  color: Colorlist[0],
                                  onChanged: (value) {
                                    toggle();
                                    Colorlist[0] = value;
                                  },
                                  initialPicker: Picker.paletteHue,
                                ),
                              ),
                              actions: [
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text("save"))
                              ],
                            ))
                            : null;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: height! / 16,
                          width: width!/6,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colorlist[index]),
                          child: (index == 0)
                              ? const Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.black,
                          )
                              : null,
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 11.0, horizontal: 20),
            child: Text(
              'Edit Your Text family',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          SizedBox(
            height: 70,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
                ListWheelScrollView.useDelegate(
                    itemExtent: 55,
                    onSelectedItemChanged: (value) {
                      toggle();
                    },
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: fontFamilyList.length,
                      builder: (context, index) => Text(
                        "Motivation",
                        style: fontFamilyList[index](
                            fontSize: 20.0, color: Colors.black),
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11.0, left: 20),
            child: Text(
              'Edit Your Text alignment',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.text_alignleft,
                    size: 30,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.text_aligncenter,
                    size: 30,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.text_alignright,
                    size: 30,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}