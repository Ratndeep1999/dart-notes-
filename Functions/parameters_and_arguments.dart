/// Difference between Parameters and Arguments

// add() function with no return type
void add(int num1, int num2) {
  // parameters
  int sum = num1 + num2;
  print('Sum : $sum');
}

// remove Function with return type
int remove(int num1, int num2) {
  // parameters
  int result = num1 - num2;
  return result;
}

void main() {
  // Function call / invocation
  add(10, 20); // arguments

  int number = remove(20, 5);
  print('Number : $number');
}

/// Parameters
// Parameters are variables defined in the function definition. They receive
// values when the function is called.
// Example: num1 and num2 in add(int num1, int num2)

/// Arguments
// Arguments are the actual values passed to the function during function call.
// Example: 10, 20, 20, and 5