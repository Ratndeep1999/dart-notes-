/// for in
// Use to iterate over all elements of an iterable
// (like a List, Set, or Map keys/values)/collection/object.

/// element
// holds current item in the iteration of collection.

/// iterable
// collection like List, Set, or Map(keys, values)

/// syntax
// for (type element in collection/object) {
//   // Code to execute for each element
// }

void main() {
  // List Collection
  List<int> numbers = [1, 2, 3];

  for (int number in numbers) {
    print('Number: $number');
  }
  // Number: 1
  // Number: 2
  // Number: 3

  // Set Collection
  Set<String> names = {'Olivia', 'Sophia', 'Emma', 'isabella'};
  for (String name in names) {
    print('Girls Name : $name');
  }

  // Girls Name : Olivia
  // Girls Name : Sophia
  // Girls Name : Emma
  // Girls Name : isabella

  // Map Collection
  Map<String, dynamic> myDetails = {
    'Name': "Ratndeep",
    'age': 26,
    'height CM': 165.5,
    'city': 'Nagpur',
  };
  for (dynamic details in myDetails.entries) {
    print('${details.key} : ${details.value}');
  }

  // Name : Ratndeep
  // age : 26
  // height CM : 165.5
  // city : Nagpur
}
