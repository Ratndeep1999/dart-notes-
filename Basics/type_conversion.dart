// help's to convert one data types to another

void main() {
  /// 1. String to int : int.parse() convert string to int by taking string as argument
  String stringValue = '1';
  print('The type of value is ${stringValue.runtimeType}'); // The type of value is String

  int intValue = int.parse(stringValue); // value pass as a argument
  print('The value of intValue is $intValue and type is ${intValue.runtimeType}');
  // The value of intValue is 1 and type is int

  /// 2. String to double : double.parse() converts string to double
  String stringValue2 = '1.1';
  print('The type of stringValue2 is ${stringValue2.runtimeType}'); // The type of stringValue2 is String

  double doubleValue = double.parse(stringValue2);
  print('The value of doubleValue is $doubleValue and type is ${doubleValue.runtimeType}');
  // The value of doubleValue is 1.1 and type is double


  /// 3. int to String : .toString()
  int one = 1;
  print('The type of one is ${one.runtimeType}'); // The type of one is int

  String oneInString = one.toString();
  print('The type of oneInString is $oneInString'); // The type of oneInString is int

  /// 4. double to int : .toInt()
  double num1 = 10.01;
  print('The type of num1 is ${num1.runtimeType} '); // The type of num1 is double

  int num2 = num1.toInt();
  print('The type of num2 is ${num2.runtimeType}'); //   The type of num2 value is int

  /// Summary
  // int.parse()  : string to int
  // double.parse : string to double
  // .toString()  : int to string
  // .toint()     : double to int

}
