
class QuoteProvider {
  String? quote, author;

  QuoteProvider({this.quote, this.author});

  factory QuoteProvider.setData(String data) => QuoteProvider(quote: data);
}
