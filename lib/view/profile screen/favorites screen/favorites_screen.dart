import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/profile%20screen/components/head_name.dart';

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
          //HEAD OF SCREEN
          head_title(context, 'Favorites'),

          //FAVORITES
          (userProvider!.favouriteQuoteList!.isEmpty)?
          //FAVORITES LIST NULL
          favouriteListNullMessage(context):
          //FAVORITES QUOTE AUTHOR
          favouriteContainerBox(context)
        ],
      ),
    );
  }
}
