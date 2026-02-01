/// Async & Await: define an Asynchronous Function
// async: keyword add before the function body.
// await: keyword add before a Future to pause execution until
// the Future completes without blocking the main thread.

void main() {
  /// Example of async-await with handling errors
  print('Fetching Data.....');
  fetchData();
  // Fetching Data.....
  // Ratndeep
}

// Function that get data/error from server
void fetchData() async {
  try {
    String data = await servers();
    print(data);
  } catch (e) {
    print("Some error $e");
  }
}

// Defines Server
Future<String> servers() {
  return Future.delayed(Duration(seconds: 5), () => "Ratndeep");
}
