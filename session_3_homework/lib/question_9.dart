/*
Question 9
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
*/
void main() {
  List<int> numbers = [1, 2, 3, 3, 4, 4];
  Set<int> numbersSet = numbers.toSet();
  bool hasDuplicates = numbersSet.length < numbers.length;
  if (hasDuplicates) {
    print("duplicates were found and removed");
  } else {
    print("no duplicates found");
  }
}
