import 'package:flutter/material.dart';
import '../../../utils/global_variables.dart';

Container introScreenOne(BuildContext context) {
  return Container(
    height: height,
    width: width,
    decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/imges/intro imges/intro1.png'))),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: SizedBox(
              width: width! / 1.5,
              child: Text(
                'Welcome to daily Motivation',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 30),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: SizedBox(
              width: width! / 1.3,
              child: Text(
                'Cultivate a positive mindset, overcome challenges and stay focused on your aspirations.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              )),
        ),
      ],
    ),
  );
}
