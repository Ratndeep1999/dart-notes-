/// while loop
// Used when we do not know in advance
// how many times the loop will execute.
// Execution depends only on the condition.
// It is an ENTRY-CONTROLLED loop.

/// Entry-Controlled Loop
// The condition is checked BEFORE executing the loop body.
// If the condition is false, the loop body will not execute.

/// Execution Flow
// 1. Initialization (outside the loop)
// 2. Condition check
// 3. If condition is true → execute loop body
// 4. Increment / Decrement inside loop
// 5. Condition is checked again
// 6. If condition becomes false → loop terminates

/// Syntax
// initialization;
// while (condition) {
//   statements;
//   increment / decrement;
// }

void main() {
  /// Example 1: Print 1 to 10
  int i = 1;
  while (i <= 10) {
    print("i : $i");
    i++;
  }

  // i : 1
  // i : 2
  // i : 3
  // i : 4
  // i : 5
  // i : 6
  // i : 7
  // i : 8
  // i : 9
  // i : 10

  /// Example 2: Print 10 to 1
  int j = 10;
  while (j >= 1) {
    print("j : $j");
    j--;
  }

  // j : 10
  // j : 9
  // j : 8
  // j : 7
  // j : 6
  // j : 5
  // j : 4
  // j : 3
  // j : 2
  // j : 1

  /// Infinite Loop Example
  // int a = 1;
  // while (a >= 1) {
  //   print("a : $a");
  //   a++;
  // }
}
