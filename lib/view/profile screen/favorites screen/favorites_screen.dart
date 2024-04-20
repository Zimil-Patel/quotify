import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotify/utils/global_variables.dart';

import '../../../utils/models/user_model.dart';
import 'componects/favorite_list_null.dart';
import 'componects/favorites_quotes.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of<UserProvider>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Padding(
                  padding: EdgeInsets.only(top: 60,left: 15),
                  child:  Icon(
                    CupertinoIcons.clear,
                    size: 28,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:60,left: 20),
                child: Text(
                  'Favorites',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 28, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          (userProvider!.favouriteQuoteList!.isEmpty)?favorites_list_nulls(context):favorites_quotes_author(context)
        ],
      ),
    );
  }
}
// userProvider!.favouriteQuoteList!.contains(
// userProvider!
//     .globalQuoteList![index])
// ? CupertinoIcons.heart_fill
//     : CupertinoIcons.heart,
// color: userProvider!.favouriteQuoteList!
//     .contains(userProvider!
//     .globalQuoteList![index])
// ? Colors.redAccent
// : Colors.white,
// size: 25,