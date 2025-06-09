
// void main() is the entry point of the program
void main() {  // here void means this function doesn't returning any value i can avoid void

  // name is variable which holds the value of type string
  var name = 'Ratndeep Chandankhede' ;

  // print function use to print the value which is hold's by variable or entity
  print(name);  // (semi-colon) ; terminates code statement

  // name = 10 ;     // it gives compile error bec. var(dyn) automatically get the variable type

  var firstName = "Ratndeep" ; // variable name is camelCase (for variable and methods)
  var lastName = "Chandankhede" ;

  // string interpolation ($firstName)
  print("My Full Name is $firstName ${lastName}"); // $ is use to fetch value of variable

}