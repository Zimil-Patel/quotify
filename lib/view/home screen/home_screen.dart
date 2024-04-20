import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:outlined_text/models/outlined_text_stroke.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:provider/provider.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/utils/models/user_model.dart';
import 'components/bottom_navigation.dart';

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
    void toggle()
    {
      setState(() {
      });
    }
    userProvider = Provider.of<UserProvider>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    if(userProvider!.pageViewIndex == 0){
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
                    decoration: userProvider!.globalQuoteList![userProvider!.pageViewIndex].isImage ?  BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(userProvider!.globalQuoteList![index].image!),
                      ),
                    ) : BoxDecoration(
                      color: userProvider!.globalQuoteList![userProvider!.pageViewIndex].color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OutlinedText(
                              text: Text(
                                userProvider!.globalQuoteList![index].quote!,
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: Colors.white
                                ),
                              ),
                              strokes: [
                                OutlinedTextStroke(
                                    color: Colors.black,
                                    width:2
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: OutlinedText(
                                text: Text(
                                  '${userProvider!.globalQuoteList![index].author! == '' ? '' : '-'} ${userProvider!.globalQuoteList![index].author!} - ${userProvider!.globalQuoteList![index].category!}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                strokes: [
                                  OutlinedTextStroke(
                                      color: Colors.black,
                                      width:2
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                                          userProvider!
                                              .globalQuoteList![index])
                                      ? CupertinoIcons.heart_fill
                                      : CupertinoIcons.heart,
                                  color: userProvider!.favouriteQuoteList!
                                          .contains(userProvider!
                                              .globalQuoteList![index])
                                      ? Colors.redAccent
                                      : Colors.white,
                                  size: 40,
                                ),
                                decoration: IconDecoration(border: IconBorder(color:Colors.black,width: 1.5)),
                              ),
                            ),
                            DecoratedIcon(
                              icon: const Icon(
                                CupertinoIcons.share,
                                color: Colors.white,
                                size: 40,
                              ),
                              decoration: IconDecoration(border: IconBorder(color:Colors.black,width: 1.5)),
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
                decoration: IconDecoration(border: IconBorder(color:Colors.black,width: 1.5)),
              ),
            ),
          ),
          bottomNavigationBox(context: context,toggle: toggle),
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
    _controller = PageController(
      initialPage: userProvider!.pageViewIndex,
      viewportFraction: 1.0,
    );
  }
}
