/*
1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers).
*/

import 'dart:io';

double add(double a, double b, [double c = 0]) => a + b + c;

double subtract(double a, double b) => a - b;

double multiply(double a, double b) => a * b;

double? divide(double a, double b) => b == 0 ? null : a / b;

void main() {
  stdout.write("a= ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("b= ");
  double b = double.parse(stdin.readLineSync()!);

  print("Addition: ${add(a, b)}");
  print("Subtraction: ${subtract(a, b)}");
  print("Multiplication: ${multiply(a, b)}");
  double? result = divide(a, b);
  print(result == null
      ? "Error: Division by zero is not allowed"
      : "Division: $result");
}
