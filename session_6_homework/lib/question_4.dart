/*
Q4. Class with Default Attribute Value
 
- Create a class Product with attributes name and price. 
- Give price a default value of 0. 
- Create two objects: one with a custom price and one with the default price. Print their details.
 */

void main() {
  Product product1 = Product('milk');
  product1.printDetails();
  Product product2 = Product('tea', 30);
  product2.printDetails();
}

class Product {
  String? name;
  double? price;
  Product([String? name, double price = 0]) {
    this.name = name;
    this.price = price;
  }
  void printDetails() {
    print("the price of $name is $price");
  }
}
