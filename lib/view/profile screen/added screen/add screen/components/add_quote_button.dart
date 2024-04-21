import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/global_variables.dart';

Center addButton(BuildContext context) {
  return Center(
    child: CupertinoButton(
      child: Container(
          height: height! / 25,
          width: width! / 4,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            'Add',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          )),
      onPressed: () {

        if(addQuoteKey.currentState!.validate()){
          if(txtAuthor.text.isEmpty || txtAuthor.text == ''){
            txtAuthor.text = '';
          }
          userProvider!.addQuote(quote: txtQuote.text, author: txtAuthor.text);
          txtQuote.clear();
          txtAuthor.clear();
          Navigator.pop(context);
        }


      },
    ),
  );
}