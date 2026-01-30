/// Custom Exception class
class MarkException implements Exception {
  String errorMessage() {
    return "Marks cannot be negative value.";
  }
}

void main() {
  try {
    checkMarks(-20);
  } catch (e) {
    print(e);
  }
}

/// checkMarks()
void checkMarks(int marks) {
  if (marks < 0) throw MarkException().errorMessage();
  return;
}
