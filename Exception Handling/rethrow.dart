/// Rethrow
// The `rethrow` keyword is used to pass an already caught exception
// to the calling method without losing the original stack trace.

/// Why rethrow?
// - To log or partially handle an exception.
// - Then allow higher-level code to handle it properly.

/// Difference: throw vs rethrow
// throw   --> creates a new exception (stack trace may change).
// rethrow --> rethrows the same exception (original stack trace preserved).

/// Syntax
// try {
//   code that may throw an exception
// } catch (e) {
//   handle/log the exception
//   rethrow;
// }

/// fetchData()
void fetchData() {
  try {
    int.parse("abc"); // FormatException
  } catch (e) {
    print("Logging error: $e");
    rethrow; // send exception to caller
  }
}

void main() {
  /// Example1:  try-catch
  try {
    fetchData();
  } catch (e) {
    print("Handled in main: $e");
  }
  // Logging error: FormatException: Invalid radix-10 number (at character 1)
  // abc
  // ^

  // Handled in main: FormatException: Invalid radix-10 number (at character 1)
  // abc
  // ^
}


