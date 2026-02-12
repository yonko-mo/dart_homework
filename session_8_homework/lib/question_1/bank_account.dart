/*
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
*/
class BankAccount {
  double _balance;
  BankAccount(this._balance);
  double get balance => _balance;
  set balance(double input) {
    if (input < 0) {
      print('Invalid balance');
    } else {
      _balance = input;
    }
  }
}
