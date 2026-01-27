/*
Question 17
Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
*/
/*
Question 17
Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
*/
void main() {
  double price = 30.5;
  String priceTag = '\$' + price.toString().padLeft(5, '');
  print("Price tag: $priceTag");
  if (priceTag.length > price.toString().length) {
    print('The formatted price tag is longer');
  } else {
    print('The formatted price tag is shorter');
  }
}