/// try-catch
// The try–catch statement is used to handle runtime exceptions
// and prevent the program from crashing.

/// Components
// try {}    --> Block that may throw an exception
// catch {}  --> Block that handles the exception
// e         --> Exception object

/// try
// The 'try' block contains code that may cause an exception. If an exception occurs, Dart stops executing the remaining
// code inside try and jumps to catch.

/// catch
// The 'catch' block contains code that handles the exception. It receives the exception object and allows us to
// show a user-friendly message or perform recovery actions.

/// e (exception object)
// The variable 'e' represents the exception object. It provides information about the error that occurred.

/// Why try–catch?
// To prevent application crashes caused by runtime errors,
// and handle failures safely.

/// syntax
// try {
//   code that may cause an exception
// } catch (e) {
//   handle exception
// }

/// Note:
// All built-in exception classes in Dart are subclasses of `Exception`.

void main() {
  // Example 1: Generic catch
  try {
    String message = "Hello";
    print('Character at position 5 is ${message[5]}'); // RangeError
    print('Inside try block..!');
  } catch (e) {
    print("Exception occurred: $e");
  }

  print('Outside try-catch..!');

  // Exception occurred: RangeError (index): Invalid value: Not in inclusive range 0..4: 5
  // Outside try-catch..!

  // Example 2: Using 'on' for specific exception
  try {
    int result = 12 ~/ 0;
    print('The result is $result');
  } on IntegerDivisionByZeroException {
    // IntegerDivisionByZeroException is inbuild subclass of Exception class.
    print('Can not divide by zero'); // Developer knows the exception that's why 'on' clause use.
  }
  // Can not divide by zero
}
