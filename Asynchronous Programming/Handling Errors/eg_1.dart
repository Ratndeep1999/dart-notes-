/// Future Error Handling: ty-catch or catchError

Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => throw Exception("Failed to fetch data"),
  );
}

void main() {
  fetchData()
      .then((data) {
        print(data);
      })
      .catchError((error) {
        print("Caught error: $error"); //
      });
  // Caught error: Exception: Failed to fetch data
}
