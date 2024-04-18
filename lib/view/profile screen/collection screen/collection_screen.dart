import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 20),
                child: Icon(CupertinoIcons.arrow_left,
                    color: Theme.of(context).colorScheme.onSurface),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Text(
                  'Collections',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 28, fontWeight: FontWeight.w700),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 60, right: 20),
                child: Text(
                  'Add new',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
         Padding(
           padding: const EdgeInsets.only(top: 300),
           child: Container(
             height: height! / 10,
             width: width! / 3,
             decoration: BoxDecoration(
               color: Colors.white
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('You do not  have any\n      collection yet.',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 27,fontWeight: FontWeight.w700),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("Collection group quotes you save together,\nlike 'Loving myself' or 'Reaching my goals'.",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18,fontWeight: FontWeight.w400),),
          )
        ],
      ),
    );
  }
}
