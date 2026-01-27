/*
Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.
*/
import 'dart:io';

void main() {
  Map<String, String?> person = {'phoneNumber': null};
  String phoneNumber = person['phoneNumber'] ?? 'Unknown';
  person['phoneNumber'] = '01125127125';
  print("Phone number length: ${person['phoneNumber']!.length}");
}