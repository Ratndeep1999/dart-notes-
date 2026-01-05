

/// Difference between Parameters and Arguments

// Function Definition
// 'add' Function with no return type
void add(int num1, int num2){  // parameters
  int sum =  num1 + num2;
  print('Sum : $sum');
}

// remove Function with return type
int remove(int num1, int num2){
  int result = num1 - num2;
  return result;
}

// main() Function
void main(){
  // Function call or invoke
  add(10, 20);  // arguments

  //
  int number = remove(20, 5);
  print('Number : $number');
}

/// Parameters
// Variables defined in the function definition.
// variable with data-type that defined as an input for the function
// Here, functionName(int num1, int num2), so num1 and num2 both are parameters.

/// Arguments
// It is Values that passed when the function called.
// Here, add(10, 20) and remove(20, 5) - 10, 20, 20, and 5 is arguments.
