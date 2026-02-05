/*
Q6. Sentence Analyzer

- Ask the user to input a sentence.
- Print how many words it contains Then print the shortest word and the longest word from the sentence
*/
import 'dart:io';

void main() {
  stdout.write('enter your sentence: ');
  String sentence = stdin.readLineSync()!;

  List<String> tempString = sentence.split(' ');
  List<String> words = [];

  for (int i = 0; i < tempString.length; i++) {
    if (tempString[i] != "") {
      words.add(tempString[i]);
    }
  }

  print("Words Count: ${words.length}");

  String shortestWord = words[0];
  String longestWord = words[0];

  for (int i = 0; i < words.length; i++) {
    if (words[i].length < shortestWord.length) {
      shortestWord = words[i];
    }
    if (words[i].length > longestWord.length) {
      longestWord = words[i];
    }
  }

  print('The shortest word is: $shortestWord');
  print('The longest word is: $longestWord');
}

// another solution for counting words by manually not with a built-in function split ()

// void main() {
//   stdout.write("enter a sentence: ");
//   String sentence = stdin.readLineSync()!;
//   String formatedSentence = sentence + " ";

//   List<String> words = [];
//   String s = "";

//   for (int i = 0; i < formatedSentence.length; i++) {
//     String letter = formatedSentence[i];

//     if (letter != ' ') {
//       s += letter;
//     } else {
//       if (s.isNotEmpty) {
//         words.add(s);
//       }
//       s = "";
//     }
//   }
//   print(words);
//   print("Words count: ${words.length}");

//   String shortestWord = words[0];
//   String longestWord = words[0];

//   for (int i = 0; i < words.length; i++) {
//     if (words[i].length < shortestWord.length) {
//       shortestWord = words[i];
//     }

//     if (words[i].length > longestWord.length) {
//       longestWord = words[i];
//     }
//   }

//   print("Shortest word: $shortestWord");
//   print("Longest word: $longestWord");
// }