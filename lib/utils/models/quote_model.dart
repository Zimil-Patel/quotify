import 'dart:io';
import 'dart:ui';

class QuoteModel {
  String? quote, author, category;
  bool isImage = true;
  String? image;
  Color? color;

  QuoteModel({this.quote,
    this.author,
    this.category,
    required this.isImage,
    this.image,
  });

  factory QuoteModel.setData(Map map, String category, int counter) =>
      QuoteModel(
          quote: map['quote'],
          author: map['author'],
          isImage: true,
          category: category,
          image: 'assets/project/${category.toLowerCase()}/image${counter > 10 ? counter - 10 : counter}.jpeg'
      );
}


