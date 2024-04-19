import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotify/utils/global_variables.dart';
import 'components/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final PageController _controller = PageController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of(context, listen: true);
    // userProvider!.isGlobalQuoteListEmpty ? userProvider!.updateData() : null;

    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) => pageViewIndex = value,
            scrollDirection: Axis.vertical,
            children: List.generate(
                userProvider!.globalQuoteList!.length, (index) {
              return Container(
                height: height,
                width: width,
                color: Theme
                    .of(context)
                    .colorScheme
                    .primary,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    userProvider!.globalQuoteList![index].quote!, style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              );
            }),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 150),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      CupertinoIcons.heart,
                      size: 40,
                    ),
                    Icon(
                      CupertinoIcons.share,
                      size: 40,
                    ),
                  ],
                )),
          ),
          bottomNavigationBox(context: context),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.jumpToPage(pageViewIndex);
    });
  }
}
