/// Data-Types
// It helps to define What the type of value we are storing inside variable.
// mostly use to categorize and manage data into specific type.



void main() {
  // numbers: holds numeric value
  int age = 26;
  double temp = 26.0;
  num num1 = 20, num2 = 15.15;

  // string: hold string values
  String name = "Ratndeep__00";

  // boolean: holds only bool type value
  bool isMarried = false;
  bool isMen = true;

  /// Type-annotation
  // Keyword<dataType> <variableName>

  // list: holds multiple value in index order, use square brackets
  List<int> numbers = [1, 2, 3, 4];
  List<dynamic> randomValues = ["Ratndeep", 0.0, 0, true, "Ratndeep"];
  print(numbers); // [1, 2, 3, 4]
  print(randomValues); // [Ratndeep, 0.0, 0, true, Ratndeep]
  print(randomValues[3]); // true

  // Set: holds multiple values but unordered, un-repetitive values, use curly braces
  Set<String> names = {"", "Ratndeep", "sunny", "Nayan", "Ratndeep"};
  print(names); // {, Ratndeep, sunny, Nayan}

  // Map: holds value in key: value pairs, key must be unique not same
  Map<String, dynamic> details = {
    "Name": "Ratndeep",
    "Age": 26,
    "isMarried": false,
  };
  print(details); // {Name: Ratndeep, Age: 26, isMarried: false}
  print(details['Age']); // 26

  // Null: use to represent null value only, gives null safety using ??, !
  Null value = null;
  print(value); // null
}
