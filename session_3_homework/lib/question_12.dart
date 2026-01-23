/*
Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.
*/
import 'dart:io';

void main() {
  Map<String, String?> userData = {'phone': null};
  String? phoneNumber = userData['phone'];
  if (phoneNumber == null) {
    print('No phone number found, please enter one:');
    userData['phone'] = stdin.readLineSync();
  }
  print("Phone number length: ${userData['phone']!.length}");
}
