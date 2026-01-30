/// Future
// Future is a class that returns a object.

// eg. of future<String>
Future<String> getUserName1() async {
  return Future.delayed(Duration(seconds: 2), () => 'Aparna');
}

// eg. of future.value
Future<String> getUserName2() {
  return Future.value('Sonali');
}

// eg. of future using then()
Future<String> getUserName3() async {
  return Future.delayed(Duration(seconds: 2), () => 'Sonali');
}

/// State of Future

// Uncompleted
// The asynchronous operation has started but has not finished yet.
// The result or error is not available at this stage.

// Completed
// The asynchronous operation has finished.
// It may complete with a value (success) or with an error (failure).

void main() {
  print("Start");
  getUserName3().then((value) => print(value));
  print("End");
  // Start
  // End
  // Sonali
}
