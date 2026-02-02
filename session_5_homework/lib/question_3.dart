/*
Q3. Word Reversal & Vowel Count
 
- Take a word from the user. 
- Print the word reversed, and also count how many vowels it has.
 */
import 'dart:io';

void main() {
  stdout.write('please enter a word: ');
  String word = stdin.readLineSync()!;
  reverseWord(word);
  countVowels(word);
}

void reverseWord(String word) {
  String reversed = '';
  for (var i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }
  print(reversed);
}

void countVowels(String word) {
  String vowels = 'aeiouAEIOU';
  int counter = 0;
  for (var i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      counter++;
    }
  }
  print('the word $word has $counter vowels');
}