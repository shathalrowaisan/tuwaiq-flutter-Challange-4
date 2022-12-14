
class QuotesData {
  String quote ;
  String author ;
  String category ;

  QuotesData({ required this.author , required this.category , required this.quote });

  factory QuotesData.fromJson({ required Map json }){
    return QuotesData(
      author: json['author'], 
      category: json['category'], 
      quote: json['quote'],
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return "quote : \n\n$quote \n\n\nauthor : \n\n$author \n\n\ncategory : \n\n$category";
  }
}