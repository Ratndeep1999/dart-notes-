import 'dart:io';

/// Read File

/// object.writeAsStringSync() : method use to update/write content inside file.

void main() {
  // object of 'test.txt' file
  File file = File('test.txt');

  // update given content at the place of previous content (override)
  file.writeAsStringSync('My Name is Ratndeep');

  // update given content with the previous content (add after previous)
  file.writeAsStringSync('\nThis is New Content....!', mode: FileMode.append);

  // get object
  File studentFile = File('student.csv');

  // creates 2 column 'Name, Phone'
  studentFile.writeAsStringSync('Name, Phone\n');

  // run loop 3 times
  for (int i = 0; i < 3; i++) {

    // take input and store into 'name' variable
    stdout.write('Enter name of student ${i + 1}');
    String? name = stdin.readLineSync();

    // take input and store into 'phone' variable
    stdout.write('Enter phone of student ${i + 1}');
    String? phone = stdin.readLineSync();

    // update name and phone as given format
    studentFile.writeAsStringSync('$name, $phone\n',mode: FileMode.append);
  }
}

/// We can create any kind of file eg. .html, .json, .xml, etc.