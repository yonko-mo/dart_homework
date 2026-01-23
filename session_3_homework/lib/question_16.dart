/*
Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
*/

void main() {
  int a = 10, b = 5, c = 15;
  
  bool ruleOne = (a > b) && (b < c);
  bool ruleTwo = (a > c) && (b < c);
  bool ruleThree = (b < a) || (c > a);

  print('Rule 1: $ruleOne');
  print('Rule 2: $ruleTwo');
  print('Rule 3: $ruleThree');


  if (ruleTwo) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
