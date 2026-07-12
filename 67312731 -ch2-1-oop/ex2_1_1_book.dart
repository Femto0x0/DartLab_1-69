class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print('Title: $title | Author: $author | Price: $$price');
  }
}

void main() {
  var book1 = Book('Dart Programming', 'Alice', 29.99);
  var book2 = Book('Flutter Clean Architecture', 'Bob', 39.99);

  book1.showDetail();
  book2.showDetail();
}