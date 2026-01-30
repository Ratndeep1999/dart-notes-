/// Custom Exception class with variable, constructor, and methods.
class IndexOutOfRangeException implements Exception {
  String error;

  IndexOutOfRangeException(this.error);

  @override
  String toString() => error;
}

/// Method
String getCharAt(String s, int index) {
  if (index < 0 || index >= s.length) {
    throw IndexOutOfRangeException("Index is out of range [0..${s.length}]");
  }
  return s[index];
}

void main() {
  String message = "Hello";

  /// try-catch-on-finally
  try {
    String s = getCharAt(message, 10);
    print(s);
  } on IndexOutOfRangeException catch (e) {
    print(e);
  } catch (e) {
    print(e);
  } finally {
    print("Job Completed..!");
  }
  // Index is out of range [0..5]
  // Job Completed..!
}
