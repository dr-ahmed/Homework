/*
Question 17
If you need a variable that can hold any type of value and may change during execution,
which data type would you use? Write a code example to show this.
*/

// We use dynamic

void main() {
  dynamic variable = 'Ahmed';
  print(variable);

  variable = 18;
  print(variable);

  variable = 0.5;
  print(variable);

  variable = true;
  print(variable);
}
