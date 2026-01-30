/// 'on' clause
// The `on` block is used when we know the 'specific type of exception'
// that can be thrown by the program.

// It allows us to handle different exceptions differently
// instead of using a single generic catch block.

/// Why use `on`?
// To catch a specific exception type
// To write clear and precise error handling
// Commonly used for known exceptions like FormatException, RangeError, etc.

/// Syntax
// try {
//   code that may cause an exception
// } on ExceptionType1 catch (e) {
//   handle ExceptionType1
// } on ExceptionType2 catch (e) {
//   handle ExceptionType2
// } catch (e) {
//   handle any other exception
// }

/// Notes
// Multiple `on` blocks can be used in a single try statement.
// The `catch` block at the end is optional but recommended
//   to handle unexpected exceptions.
// If no matching `on` block is found, the final `catch` block executes.

void main() {
  String message = "Hello";

  try {
    print("The character at the position 5 is ${message[5]}");
  } on RangeError {
    print("The valid range for the index is [0..${message.length - 1}].");
  } catch (e) {
    print(e);
  }
  // The valid range for the index is [0..4].
}