import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/global list/font_color_list.dart';
import '../../../utils/global list/font_family_list.dart';
import '../../../utils/global_variables.dart';

Future<dynamic> textThemeBottomSheet(
    BuildContext context, final VoidCallback toggle) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => SizedBox(
      height: height! / 2.5,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 12, left: 20),
            child: Text(
              'Text color',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                Colorlist.length,
                (index) => CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    (index == 0)
                        ? showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: const Text('Pick your color'),
                                  content: SizedBox(
                                    width: width! / 1.5,
                                    child: ColorPicker(
                                      color: Colorlist[0],
                                      onChanged: (value) {
                                        Colorlist[0] = value;
                                      },
                                      initialPicker: Picker.paletteHue,
                                    ),
                                  ),
                                  actions: [
                                    CupertinoButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "save",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(fontSize: 20),
                                        ))
                                  ],
                                ))
                        : null;
                  },
                  child: Container(
                    height: height! / 17,
                    width: width! / 6,
                    decoration: index == 0
                        ? BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              opacity: 0.7,
                              image: AssetImage(
                                  'assets/imges/intro imges/gradient.png'),
                            ))
                        : BoxDecoration(
                            shape: BoxShape.circle, color: Colorlist[index]),
                    child: (index == 0)
                        ? const Icon(
                            Icons.edit,
                            size: 18,
                            color: Colors.black,
                          )
                        : null,
                  ),
                ),
              ),
            ),
          ),

          //TEXT FAMILY LIST ROW
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 12, left: 20),
            child: Text(
              'Text family',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  fontFamilyList.length,
                      (index) => CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          userProvider!.changeFontFamilyTo(userProvider!.textThemeModel ,fontFamilyList[index]);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: width! / 7,
                                            padding: EdgeInsets.all(7),
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary)),
                                            child: Text(
                        'Aa',
                        style: GoogleFonts.getFont(fontFamilyList[index],
                            textStyle: Theme.of(context).textTheme.titleLarge),
                                            ),),
                      ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 12, left: 20),
            child: Text(
              'Text alignment',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          Row(
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
          )
        ],
      ),
    ),
  );
}
