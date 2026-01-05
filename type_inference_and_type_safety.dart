/// Type Inference and Type-Safety

/// Type Inference
// it is concept that conforms the type of variable base on value assigned,
// internally manage by dart analyzer.

/// Type safety
// dart is a type safety language,
// it always check value must match with variable type.

/// There are two types of checking system manage internally
// static/compile-time checking: give exception at compile time.
// runtime checking: second level of type safety , give exception at runtime.

void main() {
  // Type infer at compile-time
  var age = 21;
  print(age.runtimeType); // int

  // Type infer at run-time
  dynamic name = 'Ratndeep';
  print(name.runtimeType); // String

  var x;
  print(x.runtimeType); // Null

  int y;
  y = 10; // ok
  // y = 10.5 ;  // compile time error
}
