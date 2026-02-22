import 'food_item.dart';

class Drink extends FoodItem {
  int volume;

  Drink(String name, double basePrice, this.volume) : super(name, basePrice);

  @override
  double calculatePrice() {
    return basePrice + (volume * 0.01);
  }
}
