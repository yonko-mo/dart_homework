/*
Q6- Create a class NumberCheck with an attribute value. 
Add a method isEven() that returns true if the number is even, false otherwise.
In main(), test the method with one number.
*/
void main() {
  NumberCheck numberToCheck = NumberCheck(value: 5);
  print('Is ${numberToCheck.value} even? ${numberToCheck.isEven()}');
}

class NumberCheck {
  int value;
  NumberCheck({required this.value});
  bool isEven() {
    return value % 2 == 0 ? true : false;
  }
}
