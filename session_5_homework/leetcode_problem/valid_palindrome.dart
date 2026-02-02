/*
125. Valid Palindrome

Companies
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise. 

Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
 */
void main() {
  String s = "ab_a";
  bool palindrome = isPalindrome(s);
  print(palindrome);
}

bool isPalindrome(String s) {
  s = s.toLowerCase().replaceAll(new RegExp(r'[^a-z0-9]'), '').replaceAll(' ', '');
  List<String> newS = s.split('');
  int start = 0;
  int end = newS.length - 1;
  while (start < end) {
    if (newS[start] != newS[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}

// another solution from chatgpt

// bool isPalindrome(String s) {
//   int left = 0;
//   int right = s.length - 1;

//   while (left < right) {
//     while (left < right && !isAlphaNumeric(s[left])) {
//       left++;
//     }

//     while (left < right && !isAlphaNumeric(s[right])) {
//       right--;
//     }

//     if (s[left].toLowerCase() != s[right].toLowerCase()) {
//       return false;
//     }

//     left++;
//     right--;
//   }

//   return true;
// }

// bool isAlphaNumeric(String ch) {
//   int code = ch.codeUnitAt(0);

//   return (code >= 48 && code <= 57) || // 0-9
//       (code >= 65 && code <= 90) || // A-Z
//       (code >= 97 && code <= 122); // a-z
// }
