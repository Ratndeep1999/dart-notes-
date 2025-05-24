

// This is switch condition

import 'dart:io';

// switch, case, and break these are keywords

void main() {

  print('Please enter the color code : ');
  String ? colorCode = stdin.readLineSync();

  switch(colorCode){   // switch start from here it is alternate for if-else-ladder

    case 'o' :  // this is case label
    print('Orange');  // block statement
    break; //  break to terminate , if case trigger

    case 'r' :
    print('Red');
    break;

    case 'b' :
    print('Blue');
    break;

    case  'g' :
    print('Green');
    break;

    case 'v' :
    print('Violet');
    break;

    default:  // this is default if any case not matched then this statement will print
      print('No Color');
      break;

  }

}