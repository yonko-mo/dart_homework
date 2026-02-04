/*
Q7. Sentence Word Counter 

- Ask the user for a short sentence.
- Print how many words it contains and how many characters (excluding spaces).
*/
import 'dart:io';

// solution from eng tharwat with modifications
void main() {
  stdout.write('enter a sentence: ');
  String sentence = stdin.readLineSync()!;
  String formatedSentence = sentence + " ";

  List<String> words = [];
  String s = "";

  int charCounter = 0; // عدّ الحروف (من غير المسافات)

  // تكوين الكلمات + عدّ الحروف
  for (int i = 0; i < formatedSentence.length; i++) {
    String letter = formatedSentence[i];

    if (letter != ' ') {
      s += letter;
      charCounter++; // كل حرف مش مسافة يتحسب
    } else {
      if (s.isNotEmpty) {
        words.add(s);
      }
      s = "";
    }
  }

  int wordsCounter = words.length;

  print(
    "There are $wordsCounter words that contain $charCounter characters (excluding spaces)",
  );
}
