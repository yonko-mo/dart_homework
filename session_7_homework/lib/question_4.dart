/*
Q4- Create a class Employee with attributes name and salary. 
Add a method giveRaise(int amount) that increases the salary.
In main(), create an employee, give them a raise, and print the new salary.
*/
void main() {
  Employee employee = Employee(name: 'mohamed', salary: 10000);
  employee.giveRaise(3000);
}

class Employee {
  String name;
  double salary;
  Employee({required this.name, required this.salary});
  void giveRaise(int amount) {
    salary += amount;
    print('$name\'s salary with raise is $salary');
  }
}