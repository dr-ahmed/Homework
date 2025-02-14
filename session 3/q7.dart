/*
7. Number Check Program:
Create a program that asks the user to input a number and checks if it's positive, negative, or zero
using if-else statements
*/

import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int number = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (number > 0)
    print('The number is positive.');
  else if (number < 0)
    print('The number is negative.');
  else
    print('The number is zero.');
}
