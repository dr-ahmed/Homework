/*
8. Range Checker Program:
Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result.
*/

import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int number = int.tryParse(stdin.readLineSync()!) ?? 0,
      lowerLimit = 0,
      upperLimit = 100;

  if (number >= lowerLimit && number <= upperLimit)
    print('The number is within the range of $lowerLimit to $upperLimit.');
  else
    print('The number is outside the range of $lowerLimit to $upperLimit.');
}
