

/// Loops
// It is use to execute a block of code multiple times until
// certain conditions are not not meet
// Main purpose is to repeat the block of code without writing it multiple time.

/// Types
// For loop
// While loop
// Do while
// For each
// For in

/// for
// Use when we know, how many times the code need to repeat.
// This is entry controller loop

/// Entry controller loop
// body of loop will execute only when and only when the condition is true
// if false then throw out of the loop

/// Execution Flow
// 1. Initialization (executes once)
// 2. Condition check
// 3. If condition is true → execute loop body
// 4. Increment / Decrement
// 5. Condition check again
// 6. Repeat until condition becomes false

/// syntax
// for ( initialization; condition ; inc/dec) {
//   statements;
// }

void main(){
  for (int i = 1; i <= 10; i++){
    print("i = $i");
  }

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

  int j = 10;
  for ( j; j >= 1; j--){
    print("j = $j");
  }

  // j = 10
  // j = 9
  // j = 8
  // j = 7
  // j = 6
  // j = 5
  // j = 4
  // j = 3
  // j = 2
  // j = 1

  /// infinite loop
  // for (int a = 1; a >= 1; a++){
  //   print('a : $a');
  // }

  // a : 1
  // a : 2
  // a : 3
  // a : 4
  // a : 5
  // a : 6
  // .......infinite



}

