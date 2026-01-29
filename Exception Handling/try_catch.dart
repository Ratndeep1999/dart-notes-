/// try-catch
// The try–catch statement is used to handle runtime exceptions
// and prevent the program from crashing.

/// Components
// try {}    --> Code that may throw an exception
// catch {}  --> Code that handles the exception
// e         --> Exception object

/// try
// The `try` block contains code that may cause an exception.
// If an exception occurs, Dart immediately stops executing
// the remaining code in the `try` block and jumps to `catch`.

/// catch
// The `catch` block contains code that handles the exception.
// It receives the exception object and allows us to
// show a user-friendly message or perform recovery actions.

/// e (exception object)
// The variable `e` represents the exception object.
// It provides information about the error that occurred.

/// Why try–catch?
// To prevent application crashes caused by runtime errors,
// we use try–catch to catch and handle exceptions gracefully.

/// syntax
// try {
//   code that may cause an exception
// } catch (e) {
//   code that handles the exception
// }

/// Note:
// All built-in exception classes in Dart are subclasses of `Exception`.

void main() {
  try {
    String message = "Hello";
    print('The character at the position 5 is ${message[5]}'); // RangeError
    print('Inside try block..!');
  } catch (e) {
    print("Exception occurred: $e");
  }

  print('Outside try-catch..!');

  // Exception occurred: RangeError (index): Invalid value: Not in inclusive range 0..4: 5
  // Outside try-catch..!
}
