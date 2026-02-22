import 'food_item.dart';

class Pizza extends FoodItem {
  String size;

  Pizza(String name, double basePrice, this.size) : super(name, basePrice);

  @override
  double calculatePrice() {
    if (size == "large") {
      return basePrice + 40;
    } else if (size == "medium") {
      return basePrice + 20;
    }
    return basePrice;
  }
}
