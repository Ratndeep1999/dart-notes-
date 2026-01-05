/// Function Categories

// No parameter and No return type
// No parameter and return type
// Parameter and No return type
// Parameter and Return type

/// No parameter & No return type
// Here, No need to pass parameter and not expect any return type.

/// No parameter & Return type
// Here, Parameter not passed but value return from the function.

/// Parameter & No return type
// Here, Parameters passed from the function but value not returned.

/// Parameter and Return type
// Here, Parameters passed and value returned from the function.

// No Parameter & No return type
name() {
  print('My name is Ratndeep');
}

// No parameter & return type
int age() {
  int age = 26;
  return age;
}

// Parameter & No return type
add(int num1, int num2) {
  print('Sum : ${num1 + num2}');
}

// Parameters & Return type
String mySelf(String name, int age) {
  return "My Self $name and I'm $age years old";
}

void main() {
  name(); // My name is Ratndeep

  int myAge = age();
  print('My age is $myAge'); // My age is 26

  add(10, 10); // Sum : 20

  print(mySelf('Ratndeep', 26)); // My Self Ratndeep and I'm 26 years old
}
