/// Operators :
// use to perform different operations (maths, logical, conditional) on variables and values.
// 2 + 5 = 7;
// operands : 2 and 5.
// operator : +
// expression : 2+5=7

///Types

void main() {
  /// Arithmetic Operator
  int num1 = 10;
  int num2 = 2;

  print("addition: ${num1 + num2}"); // 12
  print("substraction: ${num1 - num2}"); // 8
  print("multiplication: ${num1 * num2}"); // 20
  print("division: ${num1 / num2}"); // 5.0
  print("modulus(remainder): ${num1 % num2}"); // 0
  print("modulus(remainder): ${num2 % num1}"); // 2
  print("unary minus: ${-num1}"); // -10
  print("integer division: ${num1 ~/ num2}"); // 5
  print("integer division: ${num2 ~/ num1}"); // 0

  /// Assignment Operator
  num age = 26;
  print("age: ${age += 1}"); // age = age + 1  // age: 27
  print("age: ${age -= 2}"); // age = 27 - 2   // age: 25
  print("age: ${age *= 2}"); // age = 25 * 2   // age: 50
  print("age: ${age /= 2}"); // age = 50 / 2  // age: 25.0

  /// Relational Operator
  int num3 = 5;
  int num4 = 10;
  int num5 = 10;

  // less than
  print(num3 < num4); // true
  // less than or equal to
  print(num4 <= num3); // false
  // greater than
  print(num3 > num4); // false
  // greater than or equal to
  print(num4 >= num5); // true
  // equal to
  print(num4 == num5); // true
  // not equal to
  print(num4 != num5); // false

  print("\n"); // next line

  /// Logical Operator
  // && (And) : if both condition true then return 'true' otherwise 'false'
  print((num3 == num4) && true); // false
  print(true && (num5 >= num3)); // true

  // || (Or) : if any one condition true then return 'true' otherwise 'false'
  print((num3 >= num4) || (num4 != num5)); // false
  print(false || (num4 == num5)); // true

  // ! (Not) : voice verse of value
  bool isMarried = false;
  print(isMarried); // false
  print(!(num4 != num5)); // true

  /// Conditional / Ternery Operator
  // condition ? (execute this if true) : (execute this if false)
  print("Ratndeep are you married ? $isMarried!",); // Ratndeep are you married ? false!
  String condition = isMarried ? "Yes" : "No";
  print("Ratndeep are you married ? $condition!",); // Ratndeep are you married ? No!

  /// Increment and Decrement operator
  // pre increment / decrement
  int ratndeepAge = 26;

  // pre increment : increase by 1
  int myAgeIn2026 = ++ratndeepAge;
  print("My Age in Year 2026 is $myAgeIn2026"); // My Age in Year 2026 27

  // pre decrement : decrease by 1
  myAgeIn2026 = --myAgeIn2026;
  print("My Age in Year 2025 $myAgeIn2026"); // My Age in Year 2025 26

  // post increment / decrement
  myAgeIn2026 = 27;

  // post increment : no increase
  myAgeIn2026 = myAgeIn2026++;
  print("My Age in Year 2026 $myAgeIn2026"); // My Age in Year 2026 27

  // post decrement : no decrease
  myAgeIn2026 = myAgeIn2026--;
  print("My Age in Year 2026 $myAgeIn2026"); // My Age in Year 2026 27

  /// Type Test Operator
  // use to check runtime type and return boolean value
  String text = "This is String";

  // is
  print(text is String);  // true
  // is!
  print(text is! String);  // false

}
