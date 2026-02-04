/// for each
// Used to iterate over collections such as List, Set, and Map. It executes a function once
// for each element in the collection. forEach is a function provided by dart collection.

/// syntax
// collection.forEach(void function(element) {
//   // Code to execute for each element
// });

/// Higher-Order Function
// A higher-order function is a function that takes another function as a parameter or returns a function.
// forEach() is a higher-order function because it accepts a function as an argument.

/// Callback function
// A callback function is the function passed to another function to be (called back) executed later.
// In forEach(), the function inside parentheses is the callback.

void main() {
  // List Collection
  List<int> numbers = [1, 2, 3];

  // forEach is a higher-order function
  numbers.forEach((value) {
    // This is the callback function
    print('Value: $value');
  });

  // Value: 1
  // Value: 2
  // Value: 3

  // Set Collection
  Set<String> names = {'Olivia', 'Sophia', 'Emma', 'isabella'};
  names.forEach((name) {
    print('Girl Name : $name');
  });

  // Girl Name : Olivia
  // Girl Name : Sophia
  // Girl Name : Emma
  // Girl Name : isabella

  // Map Collection
  Map<String, dynamic> myDetails = {
    'Name': "Ratndeep",
    'age': 26,
    'height CM': 165,
    'city': 'Nagpur',
  };
  myDetails.forEach((detail, data) {
    print('$detail : $data');
  });

  // Name : Ratndeep
  // age : 26
  // height CM : 165
  // city : Nagpur
}
