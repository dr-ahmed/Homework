/*
4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result.
*/

import 'dart:io';

int getPrice(String fruitName, Map<String, int> fruitPrices) {
  return fruitPrices.containsKey(fruitName) ? fruitPrices[fruitName]! : -1;
}

void main() {
  Map<String, int> fruitPrices = {
    "Apple": 30,
    "Banana": 10,
    "Orange": 20,
    "Mango": 50,
    "Grapes": 40
  };

  print("Enter a fruit name:");
  String fruitName = stdin.readLineSync() ?? "";

  int price = getPrice(fruitName, fruitPrices);

  if (price == -1) {
    print("Fruit not found.");
  } else {
    print("The price of $fruitName is $price");
  }
}
