import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global_variables.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(CupertinoIcons.arrow_left),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: height! / 10,
                      width: width! / 1.3,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'search',
                            suffixIcon: Icon(CupertinoIcons.search)
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text('Suggestions' , style: Theme.of(context).textTheme.titleLarge,),

                ],
              )

            ],
          ),
      ),

    );
  }
}
