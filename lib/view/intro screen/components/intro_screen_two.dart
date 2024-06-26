import 'package:flutter/material.dart';
import '../../../utils/global_variables.dart';

Container introScreenTwo(BuildContext context) {
  return Container(
    height: height,
    width: width,
    decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/imges/intro imges/intro2.png'))),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0, left: 20, right: 20),
          child: SizedBox(
              width: width! / 1,
              child: Text(
                'Reframe your mind and encourage your growth',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 28),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: SizedBox(
              width: width! / 1.4,
              child: Text(
                'Learn to think positively, stay focused, and remind yourself of your inherent worth and potential',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              )),
        ),
      ],
    ),
  );
}
