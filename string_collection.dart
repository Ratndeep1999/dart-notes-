
void main() {



  String name = 'Ratndeep' ;
  // 1. code units : returns list of UTF - 16 code units of the string
  print(name.codeUnits);  // [82, 97, 116, 110, 100, 101, 101, 112]

  // 2. .length : use to find the length of string
  print('Length of Ratndeep is ${name.length}');  //  Length of Ratndeep is 8

  // 3. .isEmpty is use to check string is empty or not, return boolean value
  print(name.isEmpty);  // false

  // 4. .isNotEmpty
  print(name.isNotEmpty);  // true



  // Methods of String

  // 1. toUpperCase() and ioLowerCase()
  print(name.toLowerCase());  // ratndeep
  print(name.toUpperCase());  // RATNDEEP

  // 2. trim() , it is use to remove extra space from both side, alternate-- trimRight() and trimLeft()
  String fullName = '      Ratndeep Chandankhede   ';
  print(fullName.trim());  // Ratndeep Chandankhede
  print(fullName.trimLeft());  // Ratndeep Chandankhede


  // 3. x.compareTo(y) , it compares two string if both text are same it return 0 if not
  // then (1 if 1st string is greater than 2nd otherwise -1 if 2nd string is greater )
  String name1 = 'Rahul' ;
  String name2 = 'Rahul' ;
  String name3 = 'Ratndeep';
  String name4 = 'Rajdeep' ;

  print(name1.compareTo(name2)); // 0
  print(name2.compareTo(name3)); // -1 (2nd one is greater)
  print(name3.compareTo(name4)); // 1 (1st one is greater)


  // 4. x.replaceAll("abc", "xyz")  it replace y with at the place of b in entire sentence
  String details = 'My name is Ratndeep and i am a Male' ;
  String newDetails = details.replaceAll('Ratndeep','Sonali');
  String updatedDetails = newDetails.replaceAll('Male', 'Female') ;
  print(updatedDetails);  // My name is Sonali and i am a Female


  // 5. x.split() method is use to split the String by comma = space ,or other pattern means string to list[0,1,2]
  List<String> split = updatedDetails.split(' ');
  print(split);  // [My, name, is, Sonali, and, i, am, a, Female]
  print(split[3]);  //  Sonali
  print(split.indexOf('Sonali'));  // 3


  // 6. .toString() it changes values to String values
  int age = 25 ;
  print('The type of age value is ${(age.toString()).runtimeType} ');  // The type of age value is String 

  
  // 7. .subString(start_after_this, end_point) use to get the text from any position
  String statement = 'I Love You' ;
  print(statement.substring(2));  //  Love You          it start from 3 till end
  print(statement.substring(2,6));  // Love             it start from 3 and end at 6


  // 8. Reverse string   //  this is deprecated from dart
  // String myName = 'Sonali';
  // print("Hello I am ${myName}");

  
}