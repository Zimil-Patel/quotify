import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/global_variables.dart';

class PastQuotesScreen extends StatefulWidget {
  const PastQuotesScreen({super.key});

  @override
  State<PastQuotesScreen> createState() => _PastQuotesScreenState();
}

class _PastQuotesScreenState extends State<PastQuotesScreen> {
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
                  'Past Quotes',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 28, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Container(
              height: height! / 7,
              width: width,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      'Confident people have a way of carrying themselves \n that makes others attracted to them.',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(CupertinoIcons.heart),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
