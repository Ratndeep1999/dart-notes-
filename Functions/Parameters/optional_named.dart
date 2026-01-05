/// Optional Named Parameters
// Here, all named parameters are optional but,
// we can define optional in three ways using
// null check, required or default value.

// Function Definition
void userAccount({
  required String name,
  String title = 'Mr/Miss.',
  double? balance,
}) {
  print('Welcome $title $name your Account Balance is ${balance ?? 0.00}');
}

void main() {
  userAccount(name: 'Ratndeep', title: 'Mr.');
  // Welcome Mr. Ratndeep your Account Balance is 0.0

  userAccount(name: 'Rahul', balance: 2020.00);
  // Welcome Mr/Miss. Rahul your Account Balance is 2020.0

  userAccount(name: 'Sonali', title: 'Miss.', balance: 5052.00);
  // Welcome Miss. Sonali your Account Balance is 5052.0
}
