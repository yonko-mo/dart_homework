/*
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
*/

class Car {
  String _brand = '';
  int _year = 0;


  String get brand => _brand;

  int get year => _year;

  set brand(String input) {
    if (input.isEmpty) {
      print('input is empty');
    } else {
      _brand = input;
    }
  }

  set year(int input) {
    if (input < 1886) {
      print('there isn\'t any car in $input');
    } else {
      _year = input;
    }
  }
}
