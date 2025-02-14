/*
5. Class Creation and Dot Operator Usage:
Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods.
*/

class Person {
  String? name;
  int? age;

  void introduce() {
    print("Hi, my name is $name and I am $age years old.");
  }
}

void main() {
  Person person = Person();

  person.age = 18;
  person.name = "Khaled";

  person.introduce();
}
