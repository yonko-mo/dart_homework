/*
Q3. Modify Attributes
 
- Create a class Person with attributes name and age. 
- Create an object and set its initial values using a constructor. 
- Then change the age of the object and print the updated details.
*/
void main() {
  Person person = Person(name: 'mohamed', age: 23);
  person.age = 25;
  person.printDetails();
}

class Person {
  String? name;
  int? age;
  Person({required String name, required int age}) {
    this.name = name;
    this.age = age;
  }

  void printDetails() {
    print('person\'s name: $name');
    print('person\'s age: $age');
  }
}
