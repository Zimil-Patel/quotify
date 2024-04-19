import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:quotify/utils/models/quote_model.dart';

import '../global list/quote_list.dart';

class UserProvider extends ChangeNotifier{
  String? name, email, password, gender;
  File? profileImage;
  List<QuoteModel>? globalQuoteList = [];
  bool isGlobalQuoteListEmpty = true;

  updateData() {
    globalQuoteList = list["Love"]
        .map((e) => QuoteModel.setData(e))
        .toList()
        .cast<QuoteModel>();
    isGlobalQuoteListEmpty = false;
  }

}