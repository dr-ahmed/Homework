/*
3. To-Do List App:
Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops.
*/

class Task {
  String description;
  DateTime dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, this.isCompleted);

  @override
  String toString() {
    return "Description : $description, due: ${dueDate.toLocal()}), isCompleted : ${isCompleted ? '✓' : 'Not yet'}";
  }
}

class ToDoList {
  List<Task> _tasks = [];

  void addTask(String description, DateTime dueDate, bool isCompleted) =>
      _tasks.add(Task(description, dueDate, isCompleted));

  void removeTask(String description) =>
      _tasks.removeWhere((task) => task.description == description);

  void updateTask(String oldDescription, String newDescription,
      DateTime newDueDate, bool isCompleted) {
    for (var task in _tasks) {
      if (task.description == oldDescription) {
        task.description = newDescription;
        task.dueDate = newDueDate;
        task.isCompleted = isCompleted;
        print("Task updated: $newDescription");
        return;
      }
    }
    print("Task not found: $oldDescription");
  }

  void displayTasks() {
    _tasks.forEach((task) => print(task.toString()));
  }
}

void main() {
  ToDoList toDoList = ToDoList();

  toDoList.addTask("Learn Dart", DateTime(2025, 2, 20), true);
  toDoList.addTask("Learn Firebase", DateTime(2025, 4, 1), false);

  print("Task list after adding tasks:");
  toDoList.displayTasks();

  toDoList.updateTask(
      "Learn Dart", "Learn Flutter", DateTime(2025, 3, 1), false);

  print("\nTask list after updating a task:");
  toDoList.displayTasks();

  toDoList.removeTask("Learn Flutter");

  print("\nTask list after removing a task:");
  toDoList.displayTasks();
}
