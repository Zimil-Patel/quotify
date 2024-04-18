import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotify/utils/global_variables.dart';
import 'components/ bottom_button_box.dart';
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
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) => pageViewIndex = value,
            scrollDirection: Axis.vertical,
            children: List.generate(
                reel.length,
                    (index) {
                  return Container(
                    height: height,
                    width: width,
                    color: reel[index],
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


List<Color> reel = [
  Colors.green,
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.grey,
  Colors.blueGrey,
  Colors.purple,
];
