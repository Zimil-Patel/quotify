class QuoteModel {
  String? quote, author;

  QuoteModel({this.quote, this.author});

  factory QuoteModel.setData(Map map) =>
      QuoteModel(quote: map['quote'], author: map['author']);
}
