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
                padding: const EdgeInsets.only(top: 60, left: 15),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        CupertinoIcons.clear,
                        size: 28,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Collection',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 30, fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 60, right: 20),
                child: Text(
                  'Add new',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
         Padding(
           padding: const EdgeInsets.only(top: 300),
           child: Container(
             height: height! / 5,
             width: width! / 1.5,
             decoration: BoxDecoration(
             ),
             child: Image(image: AssetImage('assets/imges/new images/b1.png'),fit: BoxFit.fill,),
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
