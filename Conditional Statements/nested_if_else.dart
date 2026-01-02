/// Nested if else
// means, if else indide another if else.

// syntax
// if(condition1){
     // execute if condition1 is true
//   if(condition2){
       // execute if condition2 is true
//   } else {
       // execute if condition2 is false
//   }
// } else {
     // execute if condition1 is false
// }


void main() {
  int age = 26;
  bool isMarried = false;

  if (age >= 21) {
    if (isMarried) {
      print("Your are married!");
    } else {
      print("You are above 21 but still Unmarried!");
    }
  } else {
    print("Your age is below 21, So you can't mare.. to some one ");
  }
}
