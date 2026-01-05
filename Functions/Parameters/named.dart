/// Named Parameters
// Here, parameters define inside curly braces and order doesn't matter.
// Use to mention parameters meaning (hint) at time of function invoke.
// Named parameters is optional so must to give '?' or 'required'.

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
  student(name: 'Sonali', age: 28, rollNo: 2);
  // Student name : Sonali
  // age : 28
  // rollNo. : 2
}
