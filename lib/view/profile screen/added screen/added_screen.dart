import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

class AddedScreen extends StatefulWidget {
  const AddedScreen({super.key});

  @override
  State<AddedScreen> createState() => _AddedScreenState();
}

class _AddedScreenState extends State<AddedScreen> {
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
                  'Added',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 28, fontWeight: FontWeight.w700),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 60, right: 20),
                child: Text(
                  'Add',
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
              decoration:  const BoxDecoration(
                  color: Colors.white,
                image:DecorationImage(image: NetworkImage(''),fit: BoxFit.cover)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text("You haven't added \n     anything yet.",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 27,fontWeight: FontWeight.w700),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("Add your own interesting quotes to this \n          list and never forget them.",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18,fontWeight: FontWeight.w400),),
          )
        ],
      ),
    );
  }
}
