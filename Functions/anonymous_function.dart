/// Anonymous Function
// A function without name, can have parameters and return value.
// commonly short and simple operations.

/// Syntax
// (parameters){
//   statements
// }

/// Way to use Anonymous Function
// Assign this function to variable and call the method using that variable.
// Pass this function as a parameter inside another function. (callback fun)

/// Higher-Order Function
// A function that takes another function as a parameter or returns a function.

/// Callback function
// A function passed to another function to be executed later.

void main() {
  // assigned to variable
  int Function(int) square = (int num) {
    return num * num;
  };
  print(square(5)); // 25

  // Anonymous function as a callback
  List<String> names = ['Ratndeep', 'Sam', 'Mark', 'Isabel'];
  names.forEach((name) {
    print(name);
  });
  // Ratndeep
  // Sam
  // Mark
  // Isabel

  // Anonymous function passed as parameters
  int Function(int, int) task = (int a, int b) {
    return a + b;
  };

  // Function that perform task
  void performTask(int a, int b, Function task) {
    print(task(a, b));
  }

  // performTask() function called
  performTask(15, 5, task); // 20
}
