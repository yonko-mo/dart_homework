/*
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
*/
class Book {
  String _title = '';
  int _pages = 0;

  String get title => _title;
  int get pages => _pages;
  int get readingTime => 2 * _pages;
  set title(String name) {
    if (name.isEmpty) {
      print('book title is empty try to set a valid name');
    } else {
      _title = name;
    }
  }

  set pages(int number) {
    if (number <= 0) {
      print('number of pages: $number try to set a valid number of pages');
    } else {
      _pages = number;
    }
  }
}
