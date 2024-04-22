import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:outlined_text/models/outlined_text_stroke.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/utils/models/user_model.dart';
import 'package:quotify/view/share_screen/share_screen.dart';
import 'package:share_extend/share_extend.dart';
import 'components/bottom_navigation.dart';
import 'dart:ui' as ui;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void toggle() {
      setState(() {});
    }

    userProvider = Provider.of<UserProvider>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    if (userProvider!.pageViewIndex == 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _controller.jumpToPage(userProvider!.pageViewIndex);
      });
    }
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              userProvider!.setPageViewIndex(value);
            },
            scrollDirection: Axis.vertical,
            children:
                List.generate(userProvider!.globalQuoteList!.length, (index) {
              return Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    decoration: userProvider!
                            .globalQuoteList![userProvider!.pageViewIndex]
                            .isImage
                        ? BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  userProvider!.globalQuoteList![index].image!),
                            ),
                          )
                        : BoxDecoration(
                            color: userProvider!
                                .globalQuoteList![userProvider!.pageViewIndex]
                                .color),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedText(
                            text: Text(
                              textAlign:
                                  userProvider!.textThemeModel.quoteTextAlign,
                              userProvider!.globalQuoteList![index].quote!,
                              style: GoogleFonts.getFont(
                                userProvider!.textThemeModel.fontFamily,
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        fontSize: 30,
                                        color: userProvider!
                                            .textThemeModel.fontColor),
                              ),
                            ),
                            strokes: [
                              OutlinedTextStroke(color: Colors.black, width: 2),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment:
                                  userProvider!.textThemeModel.authorTextAlign,
                              children: [
                                OutlinedText(
                                  text: Text(
                                    '${userProvider!.globalQuoteList![index].author! == '' ? '' : '-'} ${userProvider!.globalQuoteList![index].author!} ( ${userProvider!.globalQuoteList![index].category!} )',
                                    style: GoogleFonts.getFont(
                                      userProvider!.textThemeModel.fontFamily,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            color: userProvider!
                                                .textThemeModel.fontColor,
                                          ),
                                    ),
                                  ),
                                  strokes: [
                                    OutlinedTextStroke(
                                        color: Colors.black, width: 2),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 150),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                userProvider!.toggleFavourite(
                                    userProvider!.globalQuoteList![index]);
                              },
                              child: DecoratedIcon(
                                icon: Icon(
                                  userProvider!.favouriteQuoteList!.contains(
                                          userProvider!.globalQuoteList![index])
                                      ? CupertinoIcons.heart_fill
                                      : CupertinoIcons.heart,
                                  color: userProvider!.favouriteQuoteList!
                                          .contains(userProvider!
                                              .globalQuoteList![index])
                                      ? Colors.redAccent
                                      : Colors.white,
                                  size: 40,
                                ),
                                decoration: IconDecoration(
                                    border: IconBorder(
                                        color: Colors.black, width: 1.5)),
                              ),
                            ),
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ShareScreen(),));
                              },
                              child: DecoratedIcon(
                                icon: const Icon(
                                  CupertinoIcons.share,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                decoration: IconDecoration(
                                    border: IconBorder(
                                        color: Colors.black, width: 1.5)),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 14),
            child: IconButton(
              onPressed: () {
                userProvider!.isForParticularCategories = false;
                userProvider!.refresh();
              },
              icon: DecoratedIcon(
                icon: Icon(
                  Icons.sync,
                  size: 40,
                  color: Colors.white,
                ),
                decoration: IconDecoration(
                    border: IconBorder(color: Colors.black, width: 1.5)),
              ),
            ),
          ),
          bottomNavigationBox(context: context, toggle: toggle),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _controller.jumpToPage(userProvider!.pageViewIndex);
    // });
    // userProvider!.generateKeys();
    _controller = PageController(
      initialPage: userProvider!.pageViewIndex,
      viewportFraction: 1.0,
    );
  }
}
