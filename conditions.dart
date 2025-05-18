

// Conditions   (conditional statement)

import 'dart:io'; // this library for user input and output
import 'dart:math';  // for math functions


void main() {

  // It is use to write program, where need to be able to tell the computer what to do in different situation
  // with conditions i can control the flow of program

  // Types
  // 1. If condition
  // 2. If-else
  // 3. Nested If-else (condition within condition)
  // 4. else-if ladder
  // Condition based on boolean value


  // 1. If condition
  String sonali = 'I Love You !';
  String rahul = 'Yes';

  if( rahul == 'Yes' ){
    print('I Love You To!');
  }
  print('Bye !');



  // 2. If-else
  if(rahul == "Yes") {
    print('I Love You To!');
  } else {
    print('Sorry! Good Bye');
  }


  int ? numb ;
  print("Enter number to find even or odd : ");
  numb = int.parse(stdin.readLineSync()!);

  if(numb % 2 ==  0) {
    print('$numb is Even number');
  } else {
    print('$numb is Odd number');
  }


  // 3. Nested if-else
  if(numb > 0){

    if(numb % 2 == 0){
      print('$numb is positive number and $numb is Even number');
    } else {
      print('$numb is positive number but $numb is Odd number');
    }

  } else {

    if(numb % 2 == 0){
      print('$numb is negative number but $numb is Even number');
    } else {
      print('$numb is negative number and $numb Odd also');
    }

  }


  int a = 15, b = 30, c = 55 ;

  if( a > b ){

    if( a > c ){
      print('$a is grater number');
    } else {
      print('$c is greater number');
    }

  } else {

    if( b > c ) {
      print('$b is greater number');
    } else {
      print('$c is greater number');
    }

  }


  print('\n'); // for next line


  // 4. If-else ladder
  int mogliAge ;
  print('Moglie Please Enter your Age : ');
  mogliAge = int.parse(stdin.readLineSync()!);
  String id = 'BYNPC7994M' ;

  if(mogliAge >= 1 && mogliAge < 18 ){
    print('Moglie you are below 18, So sorry! you can\'t vote');
  }
  else if(mogliAge >= 18 && mogliAge <= 80 ){
    print('Moglie you can vote your id no. is $id');
  }
  else {
    print('Sorry wrong input');
  }



  // 5. condition base program on boolean values
  bool isMarried = false ;

  if(isMarried){
    print('You are Married!');
  } else {
    print('You are still Single!');
  }
}



