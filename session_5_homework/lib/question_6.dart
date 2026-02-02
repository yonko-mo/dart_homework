/*
Q6. Number Guessing (3 Tries) 

- Generate a random number between 1 and 20.
- Let the user guess up to 3 times. If they fail, reveal the correct number.
*/
import 'dart:math';
import 'dart:io';

void main() {
  Random random = new Random();
  int randomNumber = random.nextInt(20) + 1;
  int tries = 3;
  bool isGuessed = false;
  while (tries > 0) {
    stdout.write('Guess a number between 1 and 20: ');
    int? guess = int.tryParse(stdin.readLineSync() ?? '');
    if (guess == null) {
      print('Please enter a valid number.');
      continue;
    }
    if (guess == randomNumber) {
      isGuessed = true;
      break;
    }
    tries--;
    print('Wrong! Try again. Remaining tries: $tries');
  }
  if (isGuessed) {
    print('you guessed the number correctly :)');
  } else {
    print('sorry you failed. The correct number was: $randomNumber');
  }
}