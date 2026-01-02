/// Conditional Statement
// Helps to control the flow of execution in program based on conditions.

/// if
// use to execute the block only if the condition is true.

// Syntax

// if (condition) {
//   statement;  // execute this block if condition is true
// }

// if (condition) return statement; // return if condition is true

void main() {
  int age = 26;
  if (age >= 18) {
    print("I am Ready to Vote");
  }

  // return nothing because main() is void
  if (true) return; // (!false)
}
