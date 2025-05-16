

void main() {


  // 1. Arithmetic operator
  int a = 10 , b= 4 , c = 3 ;

  print(a+b); // addition 14
  print(a-b); // subtraction 6
  print(a*b); // multiplication 40 
  print(a/b); // division 2.5 
  print(a~/b); // integer division  2 
  print(a%c); // remainder (modulo) 1 
  
  // 2. Relational operator
  print('10 < 20 : ${10 < 20}'); // true  less-than
  print('10 <= 5 : ${10 <= 5}');  // false  less-than equal to
  print('10 > 5 : ${10 > 5}');  // true  greater than
  print('10 >= 5 : ${10 >= 10}');  //  true   greater than equal to
  print('10 == 5 : ${10 == 5}');  // false  equality test
  print('10 != 5 : ${10 != 10}');   // false  not equal to


  // 3. Logical operator

  // 3.1. && logical AND operator  (True if both condition is true)
  print(10 > 5 && 10 < 20);   // both are true : true
  print(10 < 5 && 10 < 20);   // first one is false : false

  // 3.2. || logical OR operator  (True if at least any one condition is true)
  print(10 > 5 || 10 > 20);   // first one is true only : true
  print(10 <= 5 || 10 >= 20);   // both are false : false

  // 3.3. ! (Not) it Toggles true to false means voice verse
  var u = false ;
  var v = !u ;
  print(v);   // true

  // program switch off and on
  bool button ;
  button = true ;

  if(button != true ) {
    print('Switch is On the Bulb will Glow');
  } else {
    print('Switch is OFF the light will Empty ');
  }




  // 4. Assignment operators

  // 4.1. Assignment operator
  String x = 'assign' ;

  // 4.2. Shorthand assignment operator

  int y = 10 ;
  print( y += 5 );  // y = y + 10
  print(y); // 15


  int z = 10 ;
  print( z -= 5 );  // y = y - 10 , 5


  int r =  3 ;
  print(r *= 10);  // r = r * 10, 30


  double p = 10 ;
  print(p /= 5 );  // p = p / 5,  2.0



  // 5. Increment and Decrement

  // 5.1.  post inc and dec

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


  // 5.2.  pre inc and dec
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


  // note : ++variable increase the value of operands (num2 = 11 ),
  // wheres variable++ returns the actual value of operand before increment (num2 = 10)



  // 6. Conditional operator or ternary (decision making operator)
  // it is the combination of ? and ;, use to check the condition is true or false if true then 1st statement print otherwise 2nd will print

  late bool result  ;
  result = (10 > 5) ? true : false ;   // this returning bool value
  print('result : $result');  // result : true


  // Program to find the gender
  late String name ;
  name = 'Ratndeep';   // input from user
  String gender = 'male';  // input from the user

  if ( '$gender' == 'male'){
    print('$name is Male');  // male
  } else {
    print('$name is Female');
  }



  // 7. Type test operator
  // 7.1. 'is' it returns boolean value if the object has specific type  i
  var o = 0 ;
  print(o is int );  // true

  // 7.2. 'is!' if the object doesn't have the specific type
  print(o is! int);  // false

  // 7.3. 'as'  Typecast it is a keyword



  // 8. ! (null assertion operator)


}