/// throw
// The `throw` keyword is used to manually raise an exception in a program.
// The thrown object must be an instance of a class that implements
// the Exception or Error type.

/// Syntax
// throw Exception("message");
// throw FormatException("message");
// throw CustomException();

// Example 1: Throwing an exception from a function
String getCharAt(String s, int index) {
  if (index < 0 || index >= s.length) {
    throw Exception("Index is out of range");
  }
  return s[index];
}

void main() {
  // Handling thrown exception
  try {
    String ch = getCharAt("Hello", 5);
    print(ch);
  } catch (e) {
    print(e); // Exception: Index is out of range
  }

  // Example 2: Throwing a specific exception
  try {
    checkAccount(-10);
  } on FormatException catch (e) {
    print(e.message); // Amount cannot be negative
  }
}

// Function that throws an exception
void checkAccount(int amount) {
  if (amount < 0) {
    throw FormatException("Amount cannot be negative");
  }
}
