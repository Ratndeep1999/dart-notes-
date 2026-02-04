/// for in
// Used to iterate over all elements of an Iterable
// such as List, Set, or Map (keys, values, or entries).

/// element
// Holds the current item from the iterable during each iteration.

/// iterable
// A collection that can be traversed sequentially (e.g., List, Set, Map.keys, Map.values, Map.entries).

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
  for (MapEntry<String, dynamic> entry in myDetails.entries) {
    print('${entry.key} : ${entry.value}');
  }

  // Name : Ratndeep
  // age : 26
  // height CM : 165.5
  // city : Nagpur
}
