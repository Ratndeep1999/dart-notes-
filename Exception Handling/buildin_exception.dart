/// Built-in Exception
// Built-in exceptions are predefined exception classes provided by Dart.
// They are automatically thrown when a runtime error occurs.

/// Types of Built-in Exceptions

// FormatException
// Thrown when a value does not match the expected format
// (e.g., invalid int or JSON parsing error).

// RangeError
// Thrown when a value is outside the valid range
// (e.g., accessing an invalid list or string index).

// TimeoutException
// Thrown when an asynchronous operation exceeds the given time limit.

// IOException
// Base class for input-output related exceptions
// (e.g., file read/write, network issues).

// IntegerDivisionByZeroException
// Thrown when an integer is divided by zero.

// UnsupportedError
// Thrown when an unsupported operation is performed
// (e.g., modifying an unmodifiable collection).

// Deferred LoadException
// Thrown when a deferred (lazy-loaded) library fails to load.

// IsolateSpawnException
// Thrown when an isolate cannot be created.

/// syntax
// try {
//   code that might throw an exception
// } on SpecificException  {
//   handle known exception
// } catch (e) {
//   handle unknown exception
// }

void main() {
  // Example 1: Generic catch
  try {
    // int.parse: string to int
    int value = int.parse("abc"); // FormatException
  } catch (e) {
    print("Exception occurred: $e");
  }
  // Exception occurred: FormatException: Invalid radix-10 number (at character 1)
  // abc
  // ^

  // Example 2: Specific exception handling using 'on'
  String data = 'abc';
  try {
    // int.parse: string to int
    int integerValue = int.parse(data);
  } on FormatException {
    print('Format Exception: input must be a numeric string..!');
  } catch (e) {
    print("Exception occurred: $e");
  }
  // Format Exception: passed data must be number of string type..!
}
