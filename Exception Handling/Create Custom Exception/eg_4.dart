/// Custom Exception class
class InvalidAgeException implements Exception {
  final String message;

  InvalidAgeException(this.message);

  @override
  String toString() => "InvalidAgeException: $message";
}

/// Method that check age
void checkAge(int age) {
  if (age < 18) {
    throw InvalidAgeException("Age must be 18 or above.");
  }
}

void main() {
  /// try-catch-on-finally
  try {
    checkAge(16);
  } catch (e) {
    print(e); // InvalidAgeException: age must be 18 or above.
  } finally {
    print("Always Execute..!");
  }
  // InvalidAgeException: Age must be 18 or above.
  // Always Execute..!
}
