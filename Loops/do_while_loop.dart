/// Do While loop
// Use to execute the block of code at least once, even if the condition is false.
// Here condition check after the execution, no matters what the statement
// This is Exit controller loop

/// Exit controller loop
// condition won't be check at beginning instead condition will be
// check at the end of the loop.

/// Execution Flow
// first : check initialization (one time)
// second : execute block of code
// third : execute increment or decrement
// fourth : check condition
// fifth : if condition is true then again execute the block of code
// sixth : again execute increment or decrement and then check condition

/// syntax
// initialization;
// do {
//   statement
//   inc/dec;
// } while (condition);

void main() {
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

  int j = 0;
  do {
    print('j = $j');
    j++;
  } while (j == 1);

  // j = 0
  // j = 1

  /// infinite
  // int a = 1;
  // do {
  //   print('a = $a');
  // } while (a >= 1);

  // a = 1
  // ...infinite
}
