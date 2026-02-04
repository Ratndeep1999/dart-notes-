/// Named Parameters
// Named parameters are defined inside curly braces { }.
// The order of arguments does NOT matter. They improve readability by providing
// parameter names at the time of function call.

/// Note
// Named parameters are optional by default. use  `required` to make them mandatory,
// or Use `?` only when a parameter can accept null.

// student Function Definition
student({required String name, required int age, required int rollNo}) {
  print('''
  Student name : $name
  age : $age
  rollNo. : $rollNo
   ''');
}

void main() {
  student(name: 'Ratndeep', age: 26, rollNo: 1);
  // Student name : Ratndeep
  // age : 26
  // rollNo. : 1
  student(name: 'Sonali', rollNo: 2, age: 28);
  // Student name : Sonali
  // age : 28
  // rollNo. : 2
}
