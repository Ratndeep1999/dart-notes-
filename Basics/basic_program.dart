// void main() is the entry point of any program without main() compiler return runtime exception.
void main() {
  // here void means this function doesn't returning any value, 'void' can be avoid.

  String fullName =
      "Ratndeep Chandankhede"; // (semi-colon) ; tells compiler to terminates code statement.
  var firstName = "Ratndeep";
  var lastName = "Chandankhede";
  int age = 26;

  // print() is pre-defined function use to print values that stored inside variable or entity.
  print(fullName); // Ratndeep Chandankhede

  // String interpolation
  print("My name is $firstName and surname is $lastName");

  // string concatenation
  print(
    "My full name is ${firstName + " " + lastName} and i am years $age old",
  ); // My full name is Ratndeep Chandankhede and i am years 26 old
}
// curly braces {} represents beginning and ending of the block of code
