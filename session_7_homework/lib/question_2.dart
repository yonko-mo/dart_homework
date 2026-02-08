/*
Q2- Create a class Temperature with an attribute celsius. 
Add a method toFahrenheit() that returns the temperature in Fahrenheit.
In main(), create an object and print the converted value.
*/
void main() {
  Temperature temperature = Temperature(celsius: 32);
  temperature.toFahrenheit();
}

class Temperature {
  double celsius;
  Temperature({required this.celsius});
  void toFahrenheit() {
    double fahrenheit = (celsius * 1.8) + 32;
    print('the temperature $celsius°C is equal in fahrenheit to $fahrenheit°F');
  }
}
