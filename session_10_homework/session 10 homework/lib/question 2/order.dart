import 'food_item.dart';

class Order {
  List<FoodItem> items = [];

  void addItem(FoodItem item) {
    items.add(item);
  }

  double calculateTotal() {
    double total = 0;
    for (var item in items) {
      total += item.calculatePrice();
    }
    return total;
  }
}
