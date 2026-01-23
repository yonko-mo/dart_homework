/*
Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
*/

void main() {
  int age = 18;
  bool hasParent = false;
  String area = "general"; 

  if (age < 18 && !hasParent) {
    print('Access denied: Parent required');
    return;
  }

  switch (area) {
    case "general":
      if (age < 18) {
        print('Access granted with parent to general area');
      } else {
        print('Access granted to general area');
      }
      break;

    case "restricted":
      if (age < 18) {
        print('Access granted with parent to restricted area');
      } else {
        print('Access granted to restricted area');
      }
      break;

    default:
      print('Invalid area');
  }
}
