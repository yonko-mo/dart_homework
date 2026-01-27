/*
Question 14
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.
*/
void main() {
  // Change this line to test different cases
  List<int>? scores = null;
  // List<int>? scores = [];
  // List<int>? scores = [10, 15, 20];
  // List<int>? scores = [25, 20,30];
  if (scores == null || scores.isEmpty) {
    print('No scores');
  } else {
    int firstElement = scores[0], lastElement = scores[scores.length - 1];
    int sum = firstElement + lastElement;
    print(sum);
    if (sum >= 40) {
      print('the sum is greater than or equal to 40');
    } else {
      print('the sum is smaller than 40');
    }
  }
  
  // another solution

  // List<int>? scores = null;
  // if (scores != null && scores.isNotEmpty) {
  //   int sum = scores.first + scores.last;
  //   print(sum);
  //   print(sum >= 40);
  // } else {
  //   print('No Scores');
  // }
}
