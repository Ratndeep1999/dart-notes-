/// Function Categories
// No parameter and No return type
// No parameter and return type
// Parameter and No return type
// Parameter and Return type

/// No parameter & No return type
// No input is passed and no value is required.
name() {
  print('My name is Ratndeep');
}

/// No parameter & Return type
// No inout is passed but a value is returned.
int getAge() {
  return 26;
}

/// Parameter & No return type
// Parameter are passed but no value is returned.
void add(int num1, int num2) {
  print('Sum : ${num1 + num2}');
}

/// Parameter and Return type
// Parameters are passed and a value is returned.
String introduce(String name, int age) {
  return "My name is $name and I'm $age years old";
}

void main() {
  name(); // My name is Ratndeep

  int myAge = getAge();
  print('My age is $myAge'); // My age is 26

  add(10, 10); // Sum : 20
  print(introduce('Ratndeep', 26)); // My Self Ratndeep and I'm 26 years old
}
