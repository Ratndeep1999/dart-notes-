/// Exception Handling
// Exceptions are runtime errors that occur while a program is executing.
// If not handled properly, the application terminates abnormally.

// Exception handling is the process of catching and managing runtime
// errors so that the application does not crash unexpectedly.

// Dart does not report these issues at compile time. When the program runs and Dart finds an invalid operation,
// it throws a run-time error.

/// Exception vs. Error

/// Exception:
// Recoverable
// Caused by runtime conditions
// Should be handled using try-catch
// Example: FormatException, TimeoutException

/// Error:
// Non-recoverable
// Caused by system or logical failures
// Should not be handled in normal application flow
// Example: OutOfMemoryError, StackOverflowError

/// Common Dart Exceptions
// FormatException
// TimeoutException
// RangeError
// SocketException

void main() {
  String message = "Hello";

  print("The character at the position 5 is ${message[5]}"); // Throw Exception
  // RangeError (index): Invalid value: Not in inclusive range 0..4: 5

  print("Bye!"); // This line will not execute

  /// Global Error Handling (Flutter high level)
  // FlutterError.onError: Handles errors from Flutter framework (UI-related errors)

  // PlatformDispatcher.instance.onError: Handles asynchronous and isolate-level errors

  // FlutterError.onError = (details) {
  //   FlutterError.presentError(details);
  //   logToSentry(details.exception, details.stack);
  // };

  // PlatformDispatcher.instance.onError = (error, stack) {
  //   logError(error, stack);
  //   return true; // Error handled
  // };
}

// Interview Ready
// Exceptions are runtime issues we can recover from using try-catch.
// Error indicates serious failures.
// In Flutter, global handlers like FlutterError.onError and PlatformDispatcher.onError
// are used to capture unhandled crashes in production apps.
