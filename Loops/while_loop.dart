/// while loop
// Use when we don't know the end before execution
// Use when we depend on the condition only
// This is entry controller loop

/// Entry controller loop
// body of loop will execute only when and only when the condition is true
// if false then throw out of the loop

/// Execution Flow
// first : check initialization (one time)
// second : check condition
// third : if condition is true then block of code executes
// fourth : execute increment or decrement after the block of code execute
// fifth : check condition again
// sixth : if condition is false then throw outside the loop (execution stop)

/// syntax
// initialization;
// while(condition){
//   statement
//   inc/dec
// }

void main() {
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

  /// infinite
//   int a = 1;
//   while(a >= 1){
//     print("a = $a");
//     a++;
//   }
}
