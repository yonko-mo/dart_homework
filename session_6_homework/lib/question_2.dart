/*
Q2. Class with Constructor

- Create a class Car with attributes brand and year. 
- Add a constructor to set the values when creating the object. 
- In main(), create two car objects with different data and print their details.
*/
void main() {
  Car car1 = Car('BMW', 2010);
  Car car2 = Car('Toyota', 2008);
  car1.printDetails();
  car2.printDetails();
}

class Car {
  String? brand;
  int? year;

  Car(String? brand, int? year) {
    this.brand = brand;
    this.year = year;
  }

  void printDetails() {
    print('this car is called $brand $year');
  }
}
