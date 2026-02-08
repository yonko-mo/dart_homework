/*
Q8- Ask the user to input a sentence. 
Print all the words that appear only once in the sentence. 
Also print the total count of unique words.
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
  Map<String, int> wordsCount = {};
  for (int i = 0; i < words.length; i++) {
    if (!wordsCount.containsKey(words[i])) {
      wordsCount[words[i]] = 1;
    } else {
      wordsCount[words[i]] = wordsCount[words[i]]! + 1;
    }
  }
  print(wordsCount);
  int totalCount = 0;
  for (var element in wordsCount.entries) {
    if (element.value == 1) {
      print('${element.key} appeared only once in the sentence');
      totalCount++;
    }
  }
  print("total count of unique words: $totalCount");
}
