import 'dart:io';

/// csv : Comma Separated Values
// csv file contains organized data in a table format, where column are separated by commas
// and rows are separated by lines breaks.

/// uses
// Data Exchange between different applications.
// Data backup and restore.
// Importing and exporting data from databases.
// Automation of data processing task.

void main() {
  // get file/object
  File file = File('test.csv');

  // read file content
  String contents = file.readAsStringSync();
  print(contents);

  // split file using new line
  List<String> lines = contents.split('\n');

  print('-------------'); //

  for (var line in lines) {
    // print('-----------'); print lines in between rows
    print(line);
    // -------------
    // Name,Email,Phone
    // John,john@gmail.com,1234567890
    // Smith,smith@gmail.com,0987654321
  }
}
