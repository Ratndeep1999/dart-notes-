/// Arrow Function / fat-arrow / arrow notation / short hand notation
// Use when we return short or one line of code (single expression).

/// Syntax
// returnType functionName(parameters) => expression;

// Function Definition
// int cube(int num) {
//   return num * num * num;
// }

int cube(int num) => num * num * num;

// Function Definition
double calculateInterest(double principle, double rate, double time) =>
    principle * rate * time / 100;

void main() {
  print('Cube : ${cube(2)}'); // Cube: 8

  double result = calculateInterest(500, 2, 2);
  print('Interest on 500 is $result'); // Interest on 500 is 20.0
}
