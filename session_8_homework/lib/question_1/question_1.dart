/*
Q1
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative balance.
 */
import 'bank_account.dart';

void main() {
  BankAccount account = BankAccount(200.5);
  print('balance: ${account.balance}');
  account.balance = 400;
  print('balance after updating: ${account.balance}');
  account.balance = -42.5;
}
