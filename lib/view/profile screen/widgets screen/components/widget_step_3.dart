import 'package:flutter/material.dart';

import '../../../../utils/global_variables.dart';

Padding widget_step3(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
    child: Container(
      height: height! / 2.5,
      width: width,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Text(
              'Step 3',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10, left: 10, top: 5),
            child: Divider(),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: SizedBox(
                width: width!/1.25,
                child: Text(
                  'Look for the Motivation Widgets in the list and select the one you are interested in. ',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              )),
          Padding(
            padding:
            const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Container(
              height: height! / 6,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)),
              child: SizedBox(
                width: width!/1.2,
                child: Text(
                  'Positive mind,Positive vibes,Positive life',textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(
                      fontWeight: FontWeight.w400, fontSize: 22,color: Colors.white),
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    ),
  );
}