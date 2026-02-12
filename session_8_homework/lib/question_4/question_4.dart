/*
Q4
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.
*/
import 'product.dart';

void main() {
  Product product = Product();
  product.name = '';
  product.price = -50;
  product.name = 'tea';
  product.price = 50.5;
  print('${product.name} original price: ${product.price}');
  print('${product.name} after discount: ${product.discountedPrice}');
}
