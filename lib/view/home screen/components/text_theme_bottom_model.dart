import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

Future<dynamic> textThemeBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
          height:height!/5,
          width: width,
          child: Column(
            children: [
              Expanded(
                child: IndexedStack(
                  index: 0,
                  children: [
                    Container(
                      height: height! / 0.9,
                      width: width! / 0.9,
                      child: Row(
                        children: [
                          Container(
                            height: height! / 10,
                            width: width! / 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: height! / 10,
                            width: width! / 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: height! / 10,
                            width: width! / 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: height! / 10,
                            width: width! / 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: height! / 10,
                            width: width! / 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: height! / 10,
                            width: width! / 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pink
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: height! / 10,
                            width: width! / 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orangeAccent
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: height! / 10,
                            width: width! / 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.lightGreen
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: height! / 5,
                      width: width! / 5,

                    ),
                    Container(
                      height: height! / 1,
                      width: width! / 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(CupertinoIcons.textformat_size , size: 20, color: Theme.of(context).colorScheme.secondary,),
                          Icon(CupertinoIcons.textformat_size , size: 30, color: Theme.of(context).colorScheme.secondary,),
                          Icon(CupertinoIcons.textformat_size , size: 35, color: Theme.of(context).colorScheme.secondary,),
                          Icon(CupertinoIcons.textformat_size , size: 40, color: Theme.of(context).colorScheme.secondary,),
                          Icon(CupertinoIcons.textformat_size , size: 45, color: Theme.of(context).colorScheme.secondary,),

                        ],
                      ),
                    ),
                    Container(
                      height: height! / 1,
                      width: width! / 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(CupertinoIcons.text_alignleft , size: 30, color: Theme.of(context).colorScheme.secondary,),
                          Icon(CupertinoIcons.text_aligncenter , size: 30, color: Theme.of(context).colorScheme.secondary,),
                          Icon(CupertinoIcons.text_alignright , size: 30, color: Theme.of(context).colorScheme.secondary,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    // color: Colors.grey,
                    child: Icon(CupertinoIcons.color_filter , color: Theme.of(context).colorScheme.secondary,size: 30,),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    // color: Colors.grey,
                    child: Icon(CupertinoIcons.textformat , color: Theme.of(context).colorScheme.secondary,size: 30,),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    // color: Colors.grey,
                    child: Icon(CupertinoIcons.textformat_size , color: Theme.of(context).colorScheme.secondary,size: 30,),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    // color: Colors.grey,
                    child: Icon(CupertinoIcons.text_aligncenter , color: Theme.of(context).colorScheme.secondary,size: 30,),
                  ),
                ],
              )
            ],
          ),
          ),
      );
}