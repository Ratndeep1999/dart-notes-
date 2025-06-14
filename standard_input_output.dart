


import 'dart:io';  // This library import the feature of 'input'


void main() {

  // I can take standard input from the user through the console by the use of .readLineSync() (method)


  // Stdin Class : It allow user to read from standard input in both Synchronous and asynchronous way
  // readLineSync() is one of the method use to take input from user or
  // readLineSync() is a method that synchronously reads a line of text entered by the user in the console and returns it as a value type

  // Note : The ! (null assertion operator) is used to assert that the result of readLineSync() is not null.


  // 1. String user input
  print('Enter your name: ');  // Enter your name:
  String ? name = stdin.readLineSync() ;  // if i entered Ratndeep
  print('Your name is $name');  // Your name is Ratndeep


  // 2. integer user input without decimal value
  print('Enter your age: ');
  // int.parse : str to int
  int age = int.parse(stdin.readLineSync()!);  // stdin is an object from Dart’s dart:io library, used to handle standard input (e.g., user input from the console).
  print('Your age is $age');  //  Your Age is 26



  // 3. floating point user input
  print('Enter the price of this product: ');
  double price = double.parse(stdin.readLineSync()!);  //  ! (null assertion operator) it tells that the result of readLineSync() is not null.
  print('The price of this product is $price');
  // here i not define null(?) operator so, if 'price' is null then it return runtime Unhandled exception:


  // There are two ways to display output on a console

  // 1. using print()
  // 2. using stdout.write()

  stdout.write('Display using stdout.write ');  // Display using stdout.write

}