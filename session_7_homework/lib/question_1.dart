/*
Q1- Create a class City with attributes name and population.
In main(), create two city objects and print their details.
*/
void main() {
  City city1 = City(name: 'Cairo', population: 20000000);
  City city2 = City(name: 'Alexandria', population: 5500000);
  city1.printDetails();
  city2.printDetails();
}

class City {
  String name;
  int population;

  City({required this.name, required this.population});

  void printDetails() {
    print('city $name has population about $population');
  }
}
