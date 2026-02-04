/// Arrow Function / fat-arrow / arrow notation / short hand notation
// Use when the function body contains only single expression.
// it automatically returns the result of that expression.

/// Syntax
// returnType functionName(parameters) => expression;

// Normal Function
// int cube(int num) {
//   return num * num * num;
// }

int cube(int num) => num * num * num;

// Arrow function with multiple parameters
double calculateInterest(double principle, double rate, double time) =>
    principle * rate * time / 100;

void main() {
  print('Cube : ${cube(2)}'); // Cube: 8

  double result = calculateInterest(500, 2, 2);
  print('Interest on 500 is $result'); // Interest on 500 is 20.0
}
