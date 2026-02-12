/*
Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
*/
import 'book.dart';

void main() {
  Book book = Book();
  book.title = '';
  book.pages = 0;
  book.title = 'harry potter';
  book.pages = 600;
  print('book title: ${book.title}\nnumber of pages: ${book.pages}');
  print(
    'what is the estimated reading time of ${book.title}? ${book.readingTime} minutes',
  );
}
