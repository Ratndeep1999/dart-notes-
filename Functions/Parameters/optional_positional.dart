/// Optional Positional Parameters
// Same as the positional parameters but they are not mandatory while calling the function.
// If a value is not passed, the parameters uses a default value or
// becomes null ( if nullable).

/// Note
// Optional positional parameters must be declared after all required positional parameters
// and are wrapped inside [ ].

// Function with default value
void welcome([String title = 'Sir/Mam.']) {
  print('Welcome $title');
}

// Function with nullable optional parameters
void userAccount(String name, [int? balance]) {
  print('$name your balance is ${balance ?? 0.0}');
}

void main(){
  /// First User
  welcome();
  userAccount('Ratndeep');
  // Welcome Sir/Mam.
  // Ratndeep your balance is 0.0

  /// Second User
  welcome('Mr.');
  userAccount('Rahul', 2500);
  // Welcome Mr.
  // Rahul your balance is 2500

  /// Third User
  welcome('Miss.');
  userAccount('Sonali');
  // Welcome Miss.
  // Sonali your balance is 0.0
}
