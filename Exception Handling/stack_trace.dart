/// Stack Trace
// A stack trace is a detailed report of the sequence of function or method calls
// that were executed before an exception occurred.
// It helps developers identify where and how the error happened.

void main() {
  try {
    int.parse("abc");
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  }

  // FormatException: Invalid radix-10 number (at character 1)
  // abc
  // ^
  //
  // #0      int._handleFormatError (dart:core-patch/integers_patch.dart:150:5)
  // #1      int._parseRadix (dart:core-patch/integers_patch.dart:179:14)
  // #2      int._parse (dart:core-patch/integers_patch.dart:121:12)
  // #3      int.parse (dart:core-patch/integers_patch.dart:81:12)
  // #4      main (file:///C:/Users/Ratndeep/Downloads/dart-notes--main/Exception%20Handling/stack_trace.dart:8:9)

  /// How to read Stack Trace
  // main: function name
  // stack_trace.dart: file name
  // 8: line number
  // 9: column name

  // #0: actual crash point
  // #1: function that called it
  // #3: your code entry

  // FormatException: Error type
  // Invalid radix-10 number: what went wrong
}

