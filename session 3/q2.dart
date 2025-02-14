/*
2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values.
*/

class GroceryStoreManager {
  List<String> _groceryList = [];

  void addItem(String item) {
    _groceryList.add(item);
  }

  void removeItem(String item) {
    _groceryList.remove(item);
  }

  void displayList() {
    _groceryList.forEach(print);
  }
}

void main() {
  var groceryStoreManager = GroceryStoreManager();

  List<String> fruits = ["banana", "apple", "mango", "strawberry"];
  fruits.forEach(groceryStoreManager.addItem);
  groceryStoreManager.displayList();

  groceryStoreManager.removeItem("apple");
  groceryStoreManager.displayList();
}
