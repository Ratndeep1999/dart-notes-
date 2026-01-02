void main() {
  /// final :
  // Value can be set at once during runtime can't re-assign,
  // and it is constant it never change.

  final String name = "Ratndeep";
  // name = "Rahul";  // Can't re-assign to the final variable 'name'
  print(name);

  /// const
  // Value can be set at once during compile-time can't re-assign,
  // and value must be known before program runs.

  const int age = 26;
  // age = 28; // Constant variables can't be assigned a value after initialization.
  print(age);
}
