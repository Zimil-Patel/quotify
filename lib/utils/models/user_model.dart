import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quotify/utils/models/quote_model.dart';
import 'package:quotify/utils/models/text_theme_model.dart';
import '../global list/category_name_list.dart';
import '../global list/quote_list.dart';

class UserProvider extends ChangeNotifier {
  String? name, email, password, gender;
  File? profileImage;
  int pageViewIndex = 0;
  TextThemeModel textThemeModel = TextThemeModel();
  GlobalKey imgKey = GlobalKey();

  setPageViewIndex(int value) {
    pageViewIndex = value;
    notifyListeners();
  }

  bool isForParticularCategories = false;
  String? selectedCategory = "Sad";

  List<QuoteModel>? globalQuoteList = [];

  List<QuoteModel>? favouriteQuoteList = [];

  List<QuoteModel> ownQuoteList = [];
  List<QuoteModel> myCollectionList = [];

  Map<int, GlobalKey> boundaryKeys = {};

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

  refresh() {
    pageViewIndex = 0;
    refreshGlobalQuoteListToRandom();
    // generateKeys();
    notifyListeners();
  }

  refreshGlobalQuoteListToRandom() {
    if (isForParticularCategories == false) {
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
        remainingQuotes -= quotesToSelect;
      }

      for (int i = 0; i < categories.length; i++) {
        selectRandomQuotes(quoteLists[categories[i]], categoryPriorities[i]);
      }

      globalQuoteList!.shuffle();
      print(globalQuoteList!.length);
    }
    // generateKeys();
  }

  updateData() {
    pageViewIndex = 0;
    globalQuoteList!.clear();
    print(selectedCategory);
    print(globalQuoteList);
    globalQuoteList!.addAll(quoteLists[selectedCategory]);
    print(globalQuoteList);
    globalQuoteList!.shuffle();
    // generateKeys();
    notifyListeners();
  }

  toggleFavourite(QuoteModel value) {
    int index = categories.indexOf(value.category!);
    print(index);
    if (!favouriteQuoteList!.contains(value)) {
      if (categoryPriorities[index] < 20) categoryPriorities[index] += 2;
      favouriteQuoteList!.add(value);
    } else {
      if (categoryPriorities[index] > 4) categoryPriorities[index] -= 2;
      favouriteQuoteList!.remove(value);
    }
    print("${value.category} prio : ${categoryPriorities[index]}");
    print(favouriteQuoteList!.length);
    notifyListeners();
  }

  changeSelectedCategory(String name) {
    selectedCategory = name;
    notifyListeners();
  }

  changeImage(QuoteModel value, String img) {
    value.isImage = true;
    value.image = img;
    notifyListeners();
  }

  changeImageToColor(QuoteModel value, Color color) {
    value.isImage = false;
    value.color = color;
    notifyListeners();
  }

  void removeFromFavouriteList({required int index}) {
    int quoteIndex = categories.indexOf(favouriteQuoteList![index].category!);
    categoryPriorities[quoteIndex] = -2;
    favouriteQuoteList!.removeAt(index);
    notifyListeners();
  }

  void changeFontFamilyTo(TextThemeModel value, String fontFamily) {
    value.fontFamily = fontFamily;
    notifyListeners();
  }

  void changeFontColorTo(TextThemeModel value, Color fontColor) {
    value.fontColor = fontColor;
    notifyListeners();
  }

  void changeTextAlignmentTo(
      {required TextThemeModel value,
      required TextAlign textAlign,
      required MainAxisAlignment mainAxisAlignment}) {
    value.quoteTextAlign = textAlign;
    value.authorTextAlign = mainAxisAlignment;
    notifyListeners();
  }

  void addQuote({required String quote, required String author}) {
    ownQuoteList.add(QuoteModel(
        isImage: false,
        image: '',
        color: Colors.grey,
        author: author,
        quote: quote,
        category: 'own'));
    notifyListeners();
  }

  void removeFromOwnQuoteList({required int index}) {
    ownQuoteList.removeAt(index);
    notifyListeners();
  }

  void showFavouriteQuotes() {
    pageViewIndex = 0;
    globalQuoteList!.clear();
    globalQuoteList!.addAll(favouriteQuoteList!);
    notifyListeners();
  }

  void showOwnQuotesList() {
    pageViewIndex = 0;
    globalQuoteList!.clear();
    globalQuoteList!.addAll(ownQuoteList);
    notifyListeners();
  }
  // void generateKeys() {
  //   boundaryKeys.clear();
  //   for (int i = 0; i < globalQuoteList!.length; i++) {
  //     boundaryKeys[i] = GlobalKey();
  //   }
  // }

}
