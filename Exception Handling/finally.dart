/// finally
// The `finally` block is always executed,
// whether an exception occurs or not.

// It is optional, but if included,
// it must come after the `try` and `catch` blocks.

// The `finally` block is mainly used for
// cleaning up resources such as closing files,
// database connections, or releasing memory.

/// Syntax
// try {
//   code that may cause an exception
// } on ExceptionType {
//   code that handles a specific exception
// } catch (e) {
//   code that handles other exceptions
// } finally {
//   code that always executes (cleanup code)
// }

void main() {
  int a = 12, b = 0, result;

  try {
    result = a ~/ b;
    print(result);
  } on UnsupportedError {
    print("Exception occurred: Cannot divide by zero");
  } catch (e) {
    print(e);
  } finally {
    print("Finally block always execute");
  }
  // Exception occurred: Cannot divide by zero
  // Finally block always execute
}
