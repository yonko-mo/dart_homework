/*
a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double.
*/

void main() {
  // point a answer
  List<Map<String, dynamic>> students = [
    {'name': 'mohamed', 'grade': 80},
    {'name': 'adel', 'grade': 70},
  ];
  // point b answer
  print(students[1]['grade']);
  // point c answer
  double averageGrade = (students[0]['grade'] + students[1]['grade']) / students.length;
  print(averageGrade);
}