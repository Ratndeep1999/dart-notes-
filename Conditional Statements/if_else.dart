/// if else
// if the condition is true then body of 'if' condition execute,
// if false then body of 'else' condition execute.

// Syntax
// if ( condition ) {
// execute this block if condition is true
// } else {
// execute this block if false
// }

void main() {
  int age = 26;

  if (age >= 18) {
    print('You are Eligible to Vote!');
  } else {
    print('You are not Eligible to Vote!');
  }

  // return nothing if true
  if(false){
    return;
  } else {
    print("Condition is False!");
  }
}
