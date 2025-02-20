/*
6. Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:
- `String name`
- `int? age` (nullable)
- `bool isStudent` (default is false)
Implement:
- A constructor that initializes `name` and `age`.
- A method `displayInfo()` that prints the person's details.
In `main()`, create an instance of `Person` and call `displayInfo()`.
*/

class Person {
  String name;
  int? age;
  bool isStudent = false;

  Person(this.name, this.age);

  void displayInfo() {
    String studentStatus = isStudent ? "Student" : "Not a student";
    print("Name: $name");
    print("Age: ${age ?? 'Not provided'}");
    print("Status: $studentStatus");
  }
}

void main() {
  Person person = Person("Ahmed", 30);
  person.displayInfo();
}
