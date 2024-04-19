import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/utils/global_variables.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              height: height! / 5,
              width: width! / 1.5,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              // child: Image(image: AssetImage('assets/imges/new images/b1.png'),fit: BoxFit.fill,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('You do not  have any\n      favorites yet.',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 27,fontWeight: FontWeight.w700),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("Keep track of the quotes you \n love by adding them to your\n              favorites.",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 19,fontWeight: FontWeight.w400),),
          )
        ],
      ),
    );
  }
}
