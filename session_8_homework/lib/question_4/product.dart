/*
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
*/

class Product {
  String _name = '';
  double _price = 0;

  String get name => _name;
  double get price => _price;

  double get discountedPrice => _price - (_price * 0.1);

  set name(String input) {
    if (input.isEmpty) {
      print('product name is rejected because it\'s empty');
    } else {
      _name = input;
    }
  }

  set price(double number) {
    if (number < 0) {
      print('product price is rejected because it\'s negative');
    } else {
      _price = number;
    }
  }
}
