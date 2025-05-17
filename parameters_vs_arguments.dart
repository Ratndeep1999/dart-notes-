

// Difference between Parameters Vs Arguments

// function's declaration
// {} A function definition in programming specifies how a function works,
// including its name, parameters, return type (if any),
// and the code block that defines its behavior. It describes what the function does when called.
void add(int num1, int num2) {  // both with their type is nothing but the parameters
  int sum ;

  sum = num1 + num2 ;
  print('The Sum od two numbers is $sum');
}


// main function
void main(){

  // Function calling
  add(20, 10);  // the passed both numbers are Arguments
}


// Here, In add(int num1, int num2), num1 and num2 are parameters and
// In add(20, 10), both the numbers is Arguments
// parameter is the name and data type that I define as an input for the function
// Arguments is actual value that I passed in

// [ Note: In dart if I don't write return type of function then. It will automatically understand ]


// Parameters are the named variables in the function definition (e.g., int num1, int num2).
// Arguments are the actual values passed during the function call (e.g., 20, 10).