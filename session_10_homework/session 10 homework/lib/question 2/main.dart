/*
2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order
*/
import 'drink.dart';
import 'order.dart';
import 'pizza.dart';

void main() {
  Pizza pizza1 = Pizza("Pepperoni", 150, "large");
  Drink drink1 = Drink("Cola", 25, 500);

  Order myOrder = Order();

  myOrder.addItem(pizza1);
  myOrder.addItem(drink1);

  print("Order Details:");
  for (var item in myOrder.items) {
    print("${item.name} => ${item.calculatePrice()}");
  }

  print("Total: ${myOrder.calculateTotal()}");
}
