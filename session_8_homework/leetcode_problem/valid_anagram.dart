/*
242. Valid Anagram

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

Example 1:

Input: s = "anagram", t = "nagaram"

Output: true

Example 2:

Input: s = "rat", t = "car"

Output: false

Constraints:

1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.

Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?
*/

void main() {
  String s = 'anagram';
  String t = 'nagaram';
  print(isAnagram(s, t));
}

bool isAnagram(String s, String t) {
  if (s.length != t.length) {
    return false;
  }
  Map<String, int> sCounts = {};
  Map<String, int> tCounts = {};
  for (var element in s.split('')) {
    if (!sCounts.containsKey(element)) {
      sCounts[element] = 1;
    } else {
      sCounts[element] = sCounts[element]! + 1;
    }
  }
  for (var element in t.split('')) {
    if (!tCounts.containsKey(element)) {
      tCounts[element] = 1;
    } else {
      tCounts[element] = tCounts[element]! + 1;
    }
  }
  for (var element in sCounts.entries) {
    if (tCounts[element.key] != element.value) {
      return false;
    }
  }
  return true;
}