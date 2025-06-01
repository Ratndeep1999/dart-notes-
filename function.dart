

// Function

// it is a sef contained block of statement that performs a specific task
// it is a reusable component in program
// it takes some data as input, process it and returns the result as an output
// it divide large code of program into small parts
// it increase readability and makes the program simple to understand and maintain
// helps to write clean code and Avoid code repetation

// Function : In dart function is an object, it can be assign to variable and pass as parameter to
// another function and can be used as returned value as well

// components :
// 1. return type : it tells the return type of output, it can be void when it doesn't return anything

// 2. Function name  : it always follow a lowerCamel case naming conversion

// 3. Parameters : it is an inputs to the function, which written inside () [bracket], it follow lowerCamel case naming conversion


import 'dart:io';

void main() {
  // calculate factorial
  int result = function(5) ;  // function calling and assigning to variable and passing 5 as argument
  print("The factorial of 5 is : $result");    // The factorial of 5 is : 120


  // refer categories of function

  // refer type of functions (pre and user define)


  // Type of User define Functions
  // 1. Normal


  // 2. Anonymous / lambda Function


  // 3. Arrow Function / arrow notation


}

// function of calculate factorial
int function( int n ){    // Function name with return type , parameter with their type  , it complete function header
  int fact = 1 ;   // fact variable initialize with value 1

  for( int i= 1; i <= n; i++ ){     // function body
    fact = fact * i ;
  }
  return fact ;   // it return integer value
}   // function header + function body = function definition

// now , refer parameter vs arguments

// Type of functions
// 1. Pre-Define : function that already define into dart as a tool just call and use it e.g. print()

// 2. User-Define : function that define by developer with individual name to perform specific task


// Categorise of Function
// 1. no parameter and no return type : no need to pass parameter and not expect return type
void sayHello(){
  print("Hello !");
}

// 2. parameter and no return type : need to pass parameter but not expect any return type
void square(int num){
  int result = num * num ;
  print("The square of $num is $result");
}

void sayYourName(String name){
  print("My name is $name");
}

// 3. no parameter and  return type : no need to pass parameter but expect return type
int sunOfTwoNum(){
  int a, b ;
  print("Please input the values : ");
  print("a : ${a = int.parse(stdin.readLineSync()!)}");
  print("b : ${b = int.parse(stdin.readLineSync()!)}");

  int c = a + b ;
  return c ;
}

// 4. parameter and return type : here both parameter and return type required
double areaOfCircle(int radius){
  double area = 3.14 * radius * radius ;
  return area ;
}




//  function.dart : Function?, categories, types : user and pre, user types : normal, anonymous, and arrow