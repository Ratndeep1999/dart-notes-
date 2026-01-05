/// Type Conversion

// int.parse()  : string to int
// double.parse : string to double
// .toString()  : int to string
// .toint()     : double to int

void main() {
  /// 1. String to int : int.parse()
  String stringValue = '1';
  int intValue = int.parse(stringValue);
  print('Value is $intValue and type is ${intValue.runtimeType}');
  // Value is 1 and type is int

  /// 2. String to double : double.parse()
  String stringValue2 = '1.1';
  double doubleValue = double.parse(stringValue2);
  print('Value is $doubleValue and type is ${doubleValue.runtimeType}');
  // Value is 1.1 and type is double

  /// 3. int to String : .toString()
  int one = 1;
  String oneInString = one.toString();
  print('The type of oneInString is $oneInString');
  // The type of oneInString is int

  /// 4. double to int : .toInt()
  double num1 = 10.01;
  int num2 = num1.toInt();
  print('The type of num2 is ${num2.runtimeType}');
  //   The type of num2 value is int
}
