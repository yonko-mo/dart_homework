/*
Q7. Sentence Word Counter 

- Ask the user for a short sentence.
- Print how many words it contains and how many characters (excluding spaces).
*/
import 'dart:io';

void main() {
  stdout.write('enter a sentence: ');
  String shortSentence = stdin.readLineSync()!.trim(); // mohamed is good
  int wordsCounter = 0;
  int charsCounter = 0;
  bool inWord = false;
  for (var i = 0; i < shortSentence.length; i++) {
    if (shortSentence[i] != ' ') {
      charsCounter++;
      if (!inWord) {
        wordsCounter++;
        inWord = true;
      }
    } else {
      inWord = false;
    }
  }

  print(
    "There are $wordsCounter words that contains $charsCounter characters (excluding spaces)",
  );
}