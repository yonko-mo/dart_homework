/*
Q5- Create a class Course with attributes title and duration (default = 3 months). 
Create two courses: one with custom duration and one with the default. Print both.
*/
void main() {
  Course course1 = Course(title: 'flutter for beginners', duration: 5);
  Course course2 = Course(title: 'flutter advanced');
  print('course\'s name: ${course1.title} with duration ${course1.duration} months');
  print('course\'s name: ${course2.title} with duration ${course2.duration} months');
}

class Course {
  String title;
  int duration;
  Course({required this.title, this.duration = 3});
}
