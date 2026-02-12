/*
Q3
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.
*/
import 'grade.dart';

void main() {
  Grade grade = Grade();
  grade.score = 100;
  print(grade.score);
  print("is student passed? ${grade.isPass}");
  grade.score = -10;
  print("is student passed? ${grade.isPass}");
}
