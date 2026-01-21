import 'dart:io';

/// Read File

/// object.readAsStringSync() : method use to get/read content inside file.

void main() {
  // get object
  File file = File('test.txt');

  // get/read file
  String contents = file.readAsStringSync();

  // print content inside file
  print(contents);
  // Welcome to test.txt file.
  // This is test file.

  // get file location
  print('File path: ${file.path}'); // File path: test.txt

  // get exact path
  print('File absolute path ${file.absolute.path}');
  // File absolute path C:\Users\Ratndeep\Downloads\dart-notes--main\File Handling\test.txt

  // get file size in bytes
  print('File size: ${file.lengthSync()} bytes');

  // get last modified date and time
  print('Last modified: ${file.lastModifiedSync()}');
  // Last modified: 2026-01-21 14:31:12.000

  // create copy of existing file by giving name or override previous one
  print(file.copySync('copy_test_file.text'));

  // get last access date and time
  print(file.lastAccessedSync()); // 2026-01-21 14:46:29.000

  // Read only specific part of file
  String specificContents = file.readAsStringSync().substring(0, 10); // (start-index, no-of-spaces)
  print('Specific Content: $specificContents'); // Specific Content: Welcome to
}

/// Note : It will throw an exception, if we try to get information of a file that does not exist.
