/*
Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
*/

/*
Discount Rules:
  1. If the user is a student -> apply 20% discount
  2. Else if the user has a coupon -> apply 15% discount
  3. Else if the price is above the threshold -> apply 10% discount
  4. Else -> no discount is applied
*/
import 'dart:io';

void main() {
  print('Please enter the price:');
  double price = double.parse(stdin.readLineSync()!);

  double threshold = 800;
  print('Is the client a student? (y/n)');
  String studentInput = stdin.readLineSync()!.toLowerCase();
  bool isStudent = studentInput == 'y';

  bool hasCoupon = false;

  if (!isStudent) {
    print('Does the user have a coupon? (y/n)');
    String couponInput = stdin.readLineSync()!.toLowerCase();
    hasCoupon = couponInput == 'y';
  }

  double finalPrice = price;

  if (isStudent) {
    print('the user gets a 20% discount because it\'s a student');
    finalPrice = price - (price * 20) / 100;
  } else if (hasCoupon) {
    print('the user gets a 15% discount because it has a coupon');
    finalPrice = price - (price * 15) / 100;
  } else if (price > threshold) {
    print('the user gets a 10% discount because it exceeds the threshold');
    finalPrice = price - (price * 10) / 100;
  } else {
    print('No discount applied');
  }
  print("final price: ${finalPrice}");
}
