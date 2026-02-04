/// Do While loop
// Used when the loop body must execute
// at least once, regardless of the condition.
// It is an EXIT-CONTROLLED loop.

/// Exit-Controlled Loop
// The condition is checked AFTER executing the loop body.
// Therefore, the loop executes at least once.

/// Execution Flow
// 1. Initialization (outside the loop)
// 2. Execute loop body
// 3. Increment / Decrement
// 4. Condition check
// 5. If condition is true → repeat
// 6. If condition is false → loop terminates

/// Syntax
// initialization;
// do {
//   statements;
//   increment / decrement;
// } while (condition);

void main() {
  /// Example 1: Print 1 to 10
  int i = 1;
  do {
    print('i = $i');
    i++;
  } while (i <= 10);

  // i = 1
  // i = 2
  // i = 3
  // i = 4
  // i = 5
  // i = 6
  // i = 7
  // i = 8
  // i = 9
  // i = 10

  /// Example 2: Condition false but executes once
  int j = 0;
  do {
    print('j = $j');
    j++;
  } while (j == 1);

  // j = 0
  // j = 1

  /// Infinite Loop Example
  // int a = 1;
  // do {
  //   print('a = $a');
  // } while (a >= 1); // no increment so, infinite loop
}
