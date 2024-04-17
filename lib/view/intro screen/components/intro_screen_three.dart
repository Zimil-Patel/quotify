import 'package:flutter/material.dart';
import '../../../utils/global_variables.dart';

Container introScreenThree(BuildContext context) {
  return Container(
    height: height,
    width: width,
    decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/imges/intro imges/intro3.jpeg'))),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: SizedBox(
              width: width! / 1,
              child: Text(
                'Achieve your goals and stay productive',
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
                'Overcome procrastination and boost your productivity by reminding yourself of the importance of taking action.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              )),
        ),
      ],
    ),
  );
}
