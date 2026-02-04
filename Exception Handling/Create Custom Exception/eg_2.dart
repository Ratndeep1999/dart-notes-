import 'dart:math';

/// Custom Exception class
class NegativeSquareRootException implements Exception {
  const NegativeSquareRootException();

  @override
  String toString() {
    return "Square root of negative number is not allowed here";
  }
}

/// method to get square root of positive number
num squareRoot(int number) {
  if (number < 0) {
    throw NegativeSquareRootException();
  } else {
    return sqrt(number);
  }
}

void main() {
  /// try-catch-on-finally
  try {
    var result = squareRoot(-4);
    print(result);
  } on NegativeSquareRootException catch (e) {
    print("Oops, Negative Number: $e");
  } catch (e) {
    print(e);
  } finally {
    print("Job Completed!");
  }

  // Oops, Negative Number: Square root of negative number is not allowed here
  // Job Completed!
}
