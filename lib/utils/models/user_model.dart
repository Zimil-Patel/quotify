import 'dart:io';
import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:quotify/utils/models/quote_model.dart';

import '../global list/category_name_list.dart';
import '../global list/quote_list.dart';

class UserProvider extends ChangeNotifier {
  String? name, email, password, gender;
  File? profileImage;
  int pageViewIndex = 0;

  setPageViewIndex(int value){
    pageViewIndex = value;
    notifyListeners();
  }



  bool isForParticularCategories = false;
  String? selectedCategory = "Sad";

  List<QuoteModel>? globalQuoteList = [];

  List<QuoteModel>? favouriteQuoteList = [];

  List<int> categoryPriorities = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
  ];

  Map quoteLists = {};


  UserProvider() {
    int j = 0;
    for (String category in categories) {
      j = 1;
      quoteLists[category] = list[category]
          .map((e) => QuoteModel.setData(e, category, j++))
          .toList()
          .cast<QuoteModel>();
    }
    pageViewIndex = 0;
    refreshGlobalQuoteListToRandom();
  }

  refresh(){
    pageViewIndex = 0;
    refreshGlobalQuoteListToRandom();
    notifyListeners();
  }

  refreshGlobalQuoteListToRandom(){
    if(isForParticularCategories == false)
    {
      print(categoryPriorities);
      globalQuoteList!.clear();
      Random random = Random();

      int totalQuotes = 60;
      int remainingQuotes = totalQuotes;
      int totalPriorities = categoryPriorities.reduce((a, b) => a + b);

      void selectRandomQuotes(List categoryList, int priority) {
        int quotesToSelect = (totalQuotes * priority) ~/ totalPriorities;
        if (quotesToSelect > remainingQuotes) quotesToSelect = remainingQuotes;
        List<QuoteModel> selectedQuotes = [];

        for (var i = 0; i < quotesToSelect; i++) {
          int randomIndex = random.nextInt(categoryList.length);
          selectedQuotes.add(categoryList[randomIndex]);
        }

        globalQuoteList?.addAll(selectedQuotes);
        print('in inside');

        remainingQuotes -= quotesToSelect;
      }

      for (int i = 0; i < 20; i++) {
        selectRandomQuotes(quoteLists[categories[i]], categoryPriorities[i]);
      }

      globalQuoteList?.shuffle();


      print(globalQuoteList!.length);
    }
  }

  updateData() {
    pageViewIndex = 0;
    globalQuoteList = quoteLists[selectedCategory];
    print(selectedCategory);
    print(globalQuoteList);
    globalQuoteList!.shuffle();
    notifyListeners();
  }

  toggleFavourite(QuoteModel value) {
    int index = categories.indexOf(value.category!);
    print(index);
    if(!favouriteQuoteList!.contains(value)){
      if(categoryPriorities[index] < 20) categoryPriorities[index] += 2;
      favouriteQuoteList!.add(value);
    } else {
      if(categoryPriorities[index] > 4) categoryPriorities[index] -= 2;
      favouriteQuoteList!.remove(value);
    }
    print("${value.category} prio : ${categoryPriorities[index]}");
    print(favouriteQuoteList!.length);
    notifyListeners();
  }

  changeSelectedCategory(String name) {
    selectedCategory = name;
  }
}
