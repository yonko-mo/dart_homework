/*
Question 10
Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.
*/
void main() {
  Map<String, String> countryCodes = {'EG': 'Egypt','SA':'Saudi Arabia'};
  print("The country code for \'EG\' is ${countryCodes['EG']}");
  countryCodes['QA'] = 'Qatar';
  print("Length: ${countryCodes.length}");
  bool JordanExists = countryCodes.containsKey('JO');
  if (!JordanExists) {
    print('Jordan missing');
  }
}
