/*
5. Sets, Functions & Return Statement
Write a function `uniqueNames(List<String> names)` that:
- Accepts a list of names.
- Returns a Set containing only unique names.
Call the function inside `main()` and print the result.
*/

Set<String> uniqueNames(List<String> names) {
  return names.toSet();
}

void main() {
  List<String> names = ["Ahmed", "Eslam", "Shalapy", "Ahmed", "Arafa", "Ahmed"];

  Set<String> unique = uniqueNames(names);
  print("Unique names: $unique");
}
