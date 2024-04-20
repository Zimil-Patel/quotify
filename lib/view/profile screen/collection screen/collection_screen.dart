import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/view/profile%20screen/components/head_name.dart';

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

          //HEAD TITLE COLLECTION
          head_title(context, 'Collection'),

          //NULL COLLECTION TITLE
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: SizedBox(width: width!/1.2,child: Text('You do not have any Collection yet.',textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 27,fontWeight: FontWeight.w700),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(width: width!/1.2,child: Text("Collection group quotes you save together,like 'Loving myself' or 'Reaching my goals'.",textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 19,fontWeight: FontWeight.w400),)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
