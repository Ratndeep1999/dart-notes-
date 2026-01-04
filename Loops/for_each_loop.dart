/// for each
// Use to iterates in the collection like list, set, or map
// to iterates the values of collection we use forEach loop

/// syntax
// collection.forEach(void function(element) {
//   statement;
// });

/// Higher-Order Function
// A higher-order function is a function that takes another function as a parameter or returns a function.
// In this case, .forEach() is a higher-order function because it accepts a function as an argument.

/// Callback function
// A callback function is the function you pass into another function to be "called back" later during execution.
// Here, the function(value) { ... } part is the callback function.
// .forEach() will call this callback once for each element in the collection.

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
