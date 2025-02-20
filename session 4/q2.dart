/*
2. Arithmetic Operators, Conditional Statements & Functions
Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a bonus based on the following rules:
- If the employee has worked for 5 or more years, they get a 10% bonus.
- Otherwise, they get a 5% bonus.
The function should return the bonus amount.
Then, call the function inside `main()` and print the result.
*/

// Function to calculate bonus based on years worked
double calculateBonus(int salary, int yearsWorked) {
  double bonusPercentage = (yearsWorked >= 5) ? 0.10 : 0.05;
  return salary * bonusPercentage;
}

void main() {
  int salary = 10000;
  int yearsWorked = 6;
  double bonus = calculateBonus(salary, yearsWorked);

  print("The bonus amount is: ${bonus.toStringAsFixed(2)}");
}
