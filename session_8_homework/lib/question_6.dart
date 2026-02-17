/*
Q4
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.

Examples:
- '()' → Valid
- '()[]{}' → Valid
- '(]' → Invalid
- '([)]' → Invalid
- '{[]}' → Valid
*/
/*
Q6
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
Examples:
- '()' → Valid
- '()[]{}' → Valid
- '(]' → Invalid
- '([)]' → Invalid
- '{[]}' → Valid
*/

void main() {
  String s = '{[]}';
  if (isValid(s)) {
    print('valid');
  } else {
    print('not valid');
  }
}

// my solution
// bool isValid(String s) {
//   while (s.contains('()') || s.contains('[]') || s.contains('{}')) {
//     s = s.replaceAll('()', '');
//     s = s.replaceAll('[]', '');
//     s = s.replaceAll('{}', '');
//   }
//   return s.isEmpty;
// }

// eng tharwat solution
bool isValid(String s) {
  Map<String, String> brackets = {')': '(', ']': '[', '}': '{'};
  List<String> stack = [];
  for (var char in s.split('')) {
    if (brackets.values.contains(char)) {
      stack.add(char);
    } else {
      String openingBracket = brackets[char]!;
      if (stack.isEmpty || stack.removeLast() != openingBracket) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
