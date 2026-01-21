import 'dart:io';

/// Delete File

void main() {
  File file = File('copy_test_file.text');

  // check if file exists
  if (file.existsSync()) {
    // delete file
    file.deleteSync();
    print('File Deleted..!');
  } else {
    print('File does not exist..!');
  }
}
