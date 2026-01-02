void main() {
  /// var
  // use when we don't know the value type at compile time
  // var automatically get / infers value type at compile time
  // Can't re-assign different type of value to same variable

  var myDetail = 8551830830;
  print(myDetail); // 8551830830
  // myDetail = "Ratndeep";  // A value of type 'String' can't be assigned to a variable of type 'int'.
  myDetail = 26;
  print(myDetail); // 26

  /// dynamic
  // use when we don't know the value type at runtime
  // value type get at runtime
  // so we can re-assign another type of value

  dynamic myData = "Ratndeep";
  print(myData); // Ratndeep

  myData = 26; // re-assigned
  print(myData); // 26

  myData = {
    'name': 'Ratndeep',
    'age': 26,
    'isMarried' : false
  };
  print(myData); // {name: Ratndeep, age: 26, isMarried: false}
}
