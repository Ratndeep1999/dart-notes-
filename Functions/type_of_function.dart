/// Types of Functions

/// Pre defined Function
// Functions that are already available in the Dart SDK. They are ready to use.
// Example: print()

/// User defined Function
// Functions created by developers to perform specific tasks.
// Example: add()

void main() {
  String name = 'Ratndeep';
  print('name'); // print() - pre defined

  print('Sum is ${add(10, 15)}'); // Sum is 15
}

// This is function definition
// add() - user defined function
int add(int num1, int num2) {
  return num1 + num2;
}
