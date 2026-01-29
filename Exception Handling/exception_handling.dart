/// Exception Handling
// Dart does not report these issues at compile time.
// When the program runs and Dart finds an invalid operation,
// it throws a run-time error.
// This run-time error is called an Exception.
// Exceptions occur while the program is executing.
// If they are not handled properly, the program terminates abnormally.

/// Exception Handling ?
// Exception handling is the process of catching and managing runtime errors so
// the application doesn’t crash unexpectedly.

/// Exception vs. Error
// Exception: Somethings we should handle (TimeoutException, FormatException).
// The program can recover

// Error: Something we cannot recover from (OutOfMemoryError, StackOverflowError)
// These indicate a failure in the logic or environment.

/// Exception                             Error
// Recoverable                            Non-recoverable
// Caused by runtime conditions           Caused by system or logic failure
// Can be handled using try-catch         Should not be caught
// Example: FormatException               Example: OutOfMemoryError

/// Common Dart Exceptions
// FormatException
// TimeoutException
// RangeError
// SocketException

void main() {
  String message = "Hello";
  print("The character at the position 5 is ${message[5]}"); // Throw Exception
  // RangeError (index): Invalid value: Not in inclusive range 0..4: 5

  print("Bye!"); // This will not execute

  /// Global Error Handling (Flutter - High Level)
  // FlutterError.onError → Handles framework/UI errors
  // PlatformDispatcher.instance.onError → Handles async & isolate errors

  // 1. FlutterError.onError: Captures error from the Flutter framework.
  // FlutterError.onError = (details) {
  //   FlutterError.presentError(details);
  //   logToSentry(details.exception, details.stack);
  // };

  // 2. PlatformDispatcher.instance.onError: Captures asynchronous errors that happen outside the Flutter context.
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   logToSentry(error, stack);
  //   return true; // Error handled
  // };
}

/// “In Flutter, exceptions are runtime issues we can recover from using try-catch,
/// while errors indicate serious failures. For production apps, we use global handlers
/// like FlutterError.onError and PlatformDispatcher.onError to capture unhandled crashes.”
