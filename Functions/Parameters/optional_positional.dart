/// Optional Positional Parameters
// Same as the positional parameters but sometimes i don't want to pass
// arguments at that time parameters takes default value so this phenomenon
// is optional positional parameters.

/// Note: we can define optional positional parameter at last position only.

// welcome function
void welcome([String title = 'Sir/Mam.']) {
  print('Welcome $title');
}

// userAccount function
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
