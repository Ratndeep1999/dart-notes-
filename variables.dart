// variable is the given name to the memory location where user can store the data and that data can be fetch when required
// in dart everything is an Object and when we create variable actually in memory an object is created,
// So i am saying variable stores the reference that is the address of an object



// dart is Optionally type lang , is supports 'static' and 'dynamic' type
// statically type means what type of variable is known at compile time to check quick issue and deduct the bug
// dynamically type means the type of variable is known at runtime


// note that variable is declared with their type
// var(type) age(variable name) =(operator) 18(value) ;
// expression : (x+y);

// variable has two scopes local and global
// variable has global scopes
int globalVariable = 100 ;

void main() {

  // variable has local scopes
  int x = 10 ;
  print(x);

  // runtime type to check compile-time type
  var a = 10 ;
  print(a.runtimeType); // int
  print(a is int );  // true

  // we can declare variable in different ways depending on the use case and requirements


  // 1. var automatically get / infers at compile time
  var name = "Ratndeep" ;  // here name infers at compile time that type is string and we cant re-assign different type value
  // name = 10 ; // compile time error , to achieve this condition i have to use dynamic keyword at the place of var
  print(name);
  name = "Daniel"; // i can re-assign same type of vlue
  print(name);

  // 2. dynamic type of variable holds any kind of value, it allow to know datatype of variable at runtime and we can re-assign
  dynamic variable = 50 ;
  print(variable); // 50
  variable = "typeIsSting"; // no error
  print(variable); // typeIsSting


  // 3. final it is use when the value is constant during runtime and can set value at once
  final String name1 = "ratndeep" ;
  final name2 = "ratndeep2" ;
  print(name1);
  print(name2);
  // name1 = "Daniel"; // compile time error: The final variable 'name1' can only be set once.


  // 4. const it is use when variable is compile time constant and value must be know before program run's, here after run the program I can change the value
  const int age = 26 ;
  print(age);

  // 5. late keyword , it ensures that the variable is declared but initialized or assign before use
  late String myName ;
  // print(myName);   // compile error that variable is unassigned
  myName = "Ratndeep3";
  print(myName);


  // 6. Explicit data type : here we declare variable with their specific data type , it helps to categories all different type of data using in code

  // Data type : Data type specifies what type of vale will be stored by the variable ,
  // there are two types 1. Single value type holds single value   2. multi-value type holds multiple values

  // 6.1.  Numbers  to represent numeric value

  // 6.1.1. int   for integer/ whole number value (64 bit max)
  int num1 = 100;

  // 6.1.2. double   for decimal/floating value (64 bit precise)
  double num2 = 10.10 ;

  // 6.1.3. num   for both value
  num num3 = 50;

  // method .toStringAsFixed(x) it is use to round double values up-to x decimal places
  double price = 15.210546 ;
  print('Price is : ${price.toStringAsFixed(2)}');  // Price is : 15.21


  // 6.2. String it represents text data enclosed in single or double quotes / it is used to store text data in singe or double quotes
  String city = 'Wardha' ;
  print(city);
  String kM = " 25 km";
  print(city + kM);

  
  // 6.3.  Boolean (bool) use to store value true either false, mostly use in if else condition, 
  // e.g  are you married, is Door open, Does a cat fly  these all are yes/no que, its good idea to store them in boolean.
  bool isMarried = true;
  print("Married status : $isMarried");
  

  // 6.4. List (list) it holds multiple values in a single variable, behave like array and it's follow index value which start from 0
  // sue to store collection of object and it is an ordered group of object
  List<String> names = ['RAj', 'John', 'Max'] ;
  print("value of names is $names");  // value of names is [RAj, John, Max]
  print("value of names[0] is ${names[0]}");  // value of names[0] is RAj
  print("value of names[1] is ${names[1]}");  // value of names[1] is John
  print("value of names[2] is ${names[2]}");  // value of names[2] is Max




  // 6.5. Sets (set) an unordered collection of unique item, set doesn't print duplicate items
   Set<String> weekday = { 'Sun', 'Mon', "Tue", "Wed", "Thu", "Fri", "Sat" };
   print(weekday); // {Sun, Mon, Tue, Wed, Thu, Fri, Sat}

   Set<int> number = {1, 2, 3, 4, 3}; // here in set duplicate values will not print because it is unordered and unfollowed index value
   print(number); // {1, 2, 3, 4}


  // 6.6. Maps (map) it is an object where we can stores key & value pairs, both can be any type in simple words it can be a dynamic collection
   Map <String, String> myDetails = { // first one is key type String and second one value type is String
     'name' : 'Ratndeep',
     'city' : 'wardha',
     'city' : 'nagpur', // if same keys trigger then it print only last kay value
     // 'age' : 24, // The element type 'int' can't be assigned to the map value type 'String'.
     'age' : '24'
   } ;
   print(myDetails);  // {name: Ratndeep, city: nagpur, age: 24}
   print(myDetails['city']); // wardha , [] with key after variable-name to print the value of that specific key

  // Dynamic key-value pairs
  var a1 = {
    'rollNumber' : 12,
    2 : 'Second',
    true : false,
  };
  print(a1); // {rollNumber: 12, 2: Second, true: false}


  // 6.7. Runes , use to represent (print) unicode char
  Runes heart = Runes ('\u2764');
  print(String.fromCharCodes(heart));  // ❤


  // 6.8. Symbol (symbol) , use to represent identifiers in a program
  Symbol s = #mySymbol ;
  print(s);  // Symbol("mySymbol")

}



// // finding length of list
// int length = names.length;
// print("Length of name is $length");
//
// // growable list
// List<String> fruits = ['Apple', 'Banana'];
// fruits.add("Mango");
// print(fruits);
//
// // Creating fixed size list
// List<String> abc = List<String>.filled(3, 'default');
// print(abc);
//
// abc[0] = 'xyz';
// abc[1] = 'abc';
// abc[2] = '123';
// print(abc);