import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showQuoteDayAlertDialog(BuildContext context, String quoteDay) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Quote Of Day'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('$quoteDay.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Done', style: Theme.of(context).textTheme.bodySmall,),
            onPressed: () {
              Navigator.of(context).pop(); // Close the alert dialog
            },
          ),
        ],
      );
    },
  );
}