/*
Question 5
What is the difference between var and dynamic in Dart? Provide an example of each.
*/

// var automatically infers the type at compile-time and becomes fixed.
// dynamic allows changing the type at runtime.

void main() {
  dynamic value = 'Hello';
  value = 42;
  value = true;
  print(value);
}
