/// Anonymous Function
// A function without return type and function name is called anonymous function
// Use for short and simple operations.

/// Syntax
// (parameters){
//   statements
// }

/// Two ways to call this function
// 1. assign this function to variable and call the method using that variable.
// 2. pass this function as a parameter inside another function. (callback fun)

/// Note:
/// Higher-Order Function
// A higher-order function is a function that takes another function
// as a parameter or returns a function.

/// Callback function
// A callback function is the function you pass into another function
// to be "called back" later during execution.

void main() {
  /// Type one to define this function
  // this function accepts int type of parameter and return int type of value.
  int Function(int) square = (int num) {
    return num * num;
  };
  print(square(5)); // 25

  /// Type two to define this function
  // Here, .forEach is Higher order function and parameter is callback function.
  List<String> names = ['Ratndeep', 'Sam', 'Mark', 'Isabel'];
  names.forEach((name) {
    print(name);
  });
  // Ratndeep
  // Sam
  // Mark
  // Isabel

  /// Type three to define this function
  // Nameless function assigned to variable
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
