import 'package:flutter/material.dart';
import 'package:quotify/utils/global_variables.dart';

Padding pastQuoteContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4.5),
    child: Container(
      width: width,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Confident people have a way of carrying themselves that makes others attracted to them.',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Text(
                '- Akshar Patel',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}