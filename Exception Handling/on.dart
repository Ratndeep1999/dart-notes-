/// 'on' clause
// The `on` block is used when we know the 'specific type of exception'
// or error that can be thrown by the program.

// It allows handling different error types differently
// instead of using a single generic catch block.

/// Why use `on`?
// To catch a specific exception or error type.
// To write clear and precise error handling.
// Commonly used for known exceptions like FormatException, RangeError, etc.

/// Syntax
// try {
//   code that may cause an exception
// } on ExceptionType1 catch (e) {
//   handle ExceptionType1
// } on ExceptionType2 catch (e) {
//   handle ExceptionType2 with error object
// } catch (e) {
//   handle any other exception or error
// }

/// Notes
// Multiple `on` blocks can be used in a single try statement.
// `catch` block at the end is optional but recommended to handle unexpected exceptions.
// If no matching 'on' block is found, the final 'catch' block executes.

void main() {
  String message = "Hello";

  // Example 1: Using 'on' without error object
  try {
    print("Character at position 5 is ${message[5]}");
  } on RangeError {
    print("Valid index range is 0 to ${message.length - 1}.");
  } catch (e) {
    print(e);
  }
  // Valid index range is 0 to 4.

  // Example 2: Using 'on' with catch to access error details
  try {
    print("The character at the position 5 is ${message[5]}");
  } on RangeError catch (e) {
    print(e); // RangeError (index): Invalid value: Not in inclusive range 0..4: 5
  } catch (e) {
    print(e);
  }
}
