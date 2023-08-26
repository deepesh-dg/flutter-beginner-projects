class Book {
  final String id;
  final String title;
  final String? description;
  final String? publisher;
  final List<String>? authors;
  final int? pageCount;
  final num? averageRating;
  final int? ratingsCount;
  final String? thumbnail;
  final String? preview;
  final num? oldPrice;
  final num? newPrice;
  final String? buyLink;
  final String? moreInfoLink;
  final String? pdf;
  final String? textSnippet;
  final List<String>? categories;

  Book(
      {required this.id,
      required this.title,
      this.description,
      this.publisher,
      this.authors,
      this.pageCount,
      this.ratingsCount,
      this.thumbnail,
      this.newPrice,
      this.buyLink,
      this.textSnippet,
      this.preview,
      this.averageRating,
      this.moreInfoLink,
      this.oldPrice,
      this.pdf,
      this.categories});

  static Book fromJson(Map<String, dynamic> data) {
    return Book(
      id: data['id'],
      title: data['volumeInfo']['title'],
      description: data['volumeInfo']['description'],
      authors: data['volumeInfo']?['authors'] != null
          ? List<String>.from(data['volumeInfo']['authors']).toList()
          : null,
      publisher: data['volumeInfo']['publisher'],
      pageCount: data['volumeInfo']['pageCount'],
      averageRating: data['volumeInfo']['averageRating'],
      ratingsCount: data['volumeInfo']['ratingsCount'],
      thumbnail: data['volumeInfo']['imageLinks']?['thumbnail'] != null
          ? data['volumeInfo']['imageLinks']['smallThumbnail']
          : null,
      preview: data['volumeInfo']['preview'],
      newPrice: data['saleInfo']?['retailPrice']?['amount'],
      buyLink: data['saleInfo']['buyLink'],
      moreInfoLink: data['volumeInfo']['moreInfoLink'],
      textSnippet: data['searchInfo']?['textSnippet'],
      oldPrice: data['saleInfo']?['listPrice']?['amount'],
      pdf: data['accessInfo']['pdf']['isAvailable']
          ? data['accessInfo']['pdf']['acsTokenLink']
          : null,
      categories: data['volumeInfo']?['categories'] != null
          ? List<String>.from(data['volumeInfo']?['categories'])
          : null,
    );
  }
}
