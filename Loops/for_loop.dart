

/// Loops
// It is use to execute a block of code multiple times until
// certain conditions are not not meet
// Main purpose is to repeat the block of code without writing it multiple time.

/// Types
// For loop
// While loop
// Do while
// For in loop


/// for
// Use when we know, how many times the code need to repeat.

/// Execution Flow
// first : check initialization (once)
// second : check condition
// third : if condition is true then block of code execute
// fourth : execute increment or decrement after the block of code execute
// fifth : check condition again
// sixth : if condition is true then block of code execute

/// It is also known as exit controller loop

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

