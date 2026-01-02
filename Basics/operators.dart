/// Operators :
// use to perform different operations (maths, logical, conditional) on variables and values.
// 2 + 5 = 7;
// operands : 2 and 5.
// operator : +
// expression : 2+5=7

///Types

void main() {
  /// 1. Arithmetic operator
  int a = 10, b = 4, c = 3;

  print(a + b); // addition 14
  print(a - b); // subtraction 6
  print(a * b); // multiplication 40
  print(a / b); // division 2.5
  print(a ~/ b); // integer division  2
  print(a % c); // remainder (modulo) 1

  /// 2. Assignment Operator
  num age = 26;
  print("age: ${age += 1}"); // age = age + 1  // age: 27
  print("age: ${age -= 2}"); // age = 27 - 2   // age: 25
  print("age: ${age *= 2}"); // age = 25 * 2   // age: 50
  print("age: ${age /= 2}"); // age = 50 / 2  // age: 25.0

  /// 3. Relational operator
  print('10 < 20 : ${10 < 20}'); // true  less-than
  print('10 <= 5 : ${10 <= 5}'); // false  less-than equal to
  print('10 > 5 : ${10 > 5}'); // true  greater than
  print('10 >= 5 : ${10 >= 10}'); //  true   greater than equal to
  print('10 == 5 : ${10 == 5}'); // false  equality test
  print('10 != 5 : ${10 != 10}'); // false  not equal to

  /// 4. Logical operator

  // 4.1. && logical AND operator  (True if both condition is true)
  print(10 > 5 && 10 < 20); // both are true : true
  print(10 < 5 && 10 < 20); // first one is false : false

  // 4.2. || logical OR operator  (True if at least any one condition is true)
  print(10 > 5 || 10 > 20); // first one is true only : true
  print(10 <= 5 || 10 >= 20); // both are false : false

  // 4.3. ! (Not) it Toggles true to false means voice verse
  var u = false;
  var v = !u;
  print(v); // true

  /// 5. Conditional / Ternery Operator
  // condition ? (execute this if true) : (execute this if false)

  late bool result  ;
  result = (10 > 5) ? true : false ;   // this returning bool value
  print('result : $result');  // result : true

  bool isMarried = false;
  print("Ratndeep are you married ? $isMarried!"); // Ratndeep are you married ? false!
  String condition = isMarried ? "Yes" : "No";
  print("Ratndeep are you married ? $condition!",); // Ratndeep are you married ? No!


  /// 6. Increment and Decrement operator
  // 6.1.  post inc and dec
  int num1 = 10 ;

  // post increment
  int num2 = num1++ ;
  print('num1 = $num1'); // 11
  print('num2 = $num2'); // 10

  // post decrement
  num1 = 10;
  num2 = num1-- ;
  print('num1 = $num1');  //  9
  print('num2 = $num2');  //  10


  // 6.2.  pre inc and dec
  num1 = 10 ;

  // pre increment
  num2 = ++num1;
  print('num1 = $num1');  // 11
  print('num2 = $num2');  // 11

  num1 = 10;

  // pre decrement
  num2 = --num1;
  print('num1 = $num1');  //  9
  print('num2 = $num2');  //  9

  /// 7. Type Test Operator
  // use to check runtime type and return boolean value
  String text = "This is String";

  // is
  print(text is String); // true
  // is!
  print(text is! String); // false
}
