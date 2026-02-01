/// errorStream

Stream<int> errorStream(int number) async* {
  for (int i = 0; i <= number; i++) {
    await Future.delayed(Duration(seconds: 2));
    if (i == 5) throw Exception("Error at value 5");
    yield i;
  }
}

void main() {
  errorStream(8).listen(
    (value) {
      print(value);
    },
    onError: (error) {
      print("Caught error: $error.");
    },
    onDone: () {
      print("Stream is done.");
    },
  );
  // 0
  // 1
  // 2
  // 3
  // 4
  // Caught error: Exception: Error at value 5.
  // Stream is done.
}
