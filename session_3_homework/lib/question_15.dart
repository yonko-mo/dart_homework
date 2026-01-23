/*
Question 15
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.
*/

/*
/ --> home page
/products --> products data from map
/profile --> user data from map
*/

import 'dart:io';

void main() {
  Map<String, String> products = {'1': 'Laptop', '2': 'Phone'};
  Map<String, String?> profile = {'name': 'Mohamed', 'email': null};

  print('please enter path (/, /products, /profile);');
  String? path = stdin.readLineSync();
  if (path == null || path.isEmpty) {
    print('No route provided');
    return;
  }
  switch (path) {
    case '/':
      print('Home page');
      break;
    case '/products':
      print(products);
      break;
    case '/profile':
      print('Name: ${profile['name']}');
      print('Email: ${profile['email'] ?? 'Not provided'}');
      break;
    default:
      print('error 404');
  }
}
