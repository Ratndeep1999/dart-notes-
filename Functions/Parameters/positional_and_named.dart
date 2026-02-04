/// positional and named parameters
// Here, positional parameters are mandatory and come first, and Named
// parameters are optional and come after positional parameters.


// Function Definition
void userAccount(String name, String title, {double? balance}) {
  print('Welcome $title $name your Account balance is ${balance ?? 0.00}');
}

void main() {
  userAccount("Ratndeep", 'Mr.', balance: 2035.22);
  // Welcome Mr. Ratndeep your Account balance is 2035.22

  userAccount("Sonali", 'Miss.');
  // Welcome Miss. Sonali your Account balance is 0.0
}
