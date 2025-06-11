

// Type conversion basically helps to convert one datatype to another

void main() {

  // 1. String to int : int.parse() method convert string to int by taking string as argument
  String strValue = '1' ;
  print('The type of strValue is ${strValue.runtimeType}');  // The type of strValue is String

  int intValue = int.parse(strValue);  // strValue pass as a argument
  print('The value of intValue is $intValue ');  // The value of intValue is 1
  print('The type of intValue is ${intValue.runtimeType}');  // The type of intValue is int


  // 2. string to double : double.parse() converts string to double
  String strVlue = '1.1' ;
  print('The type of strVlue is ${strVlue.runtimeType}');  // The type of strVlue is String

  double doubleValue = double.parse(strVlue);
  print('The value of doubleValue is $doubleValue ');   // The value of doubleValue is 1.1
  print('The type of doubleValue is ${doubleValue.runtimeType}');  // The type of doubleValue is double


  // 3. int to string : .toString() converts int to string
  int one = 1 ;
  print('The type of one is ${one.runtimeType}');  // The type of one is int

  String oneInString = one.toString();
  print('The value of one is $oneInString'); // The value of one is 1
  print('The type of oneInString is ${oneInString.runtimeType}');   // The type of oneInString is String



  // 4. .toint() converts double to int
  double num1 = 10.01 ;
  print('The type of num1 is ${num1.runtimeType} ');  // The type of num1 is double

  int num2 = num1.toInt();
  print('The value of num2 is $num2');  //   The type of num2 value is int
  print('The type of num2 value is ${num2.runtimeType}');  // The value of num2 is 10






  // Cross check
  double strVat = 1.0 ;
  print('${strVat.runtimeType}');
  // int strVat2 = int.parse(strVat); // The argument type 'double' can't be assigned to the parameter type 'String'.


}
