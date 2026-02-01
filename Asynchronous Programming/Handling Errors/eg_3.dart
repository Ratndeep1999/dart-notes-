import 'dart:async';
/// Error Handling using Zone Feature

Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    throw Exception("Failed to fetch data..!"),
  );
}

void main() {
  runZonedGuarded(
    () {
      fetchData().then((data) {
        print(data);
      });
    },
    (error, stackTrace) {
      print("Caught error in zone: $error");
    },
  );
  // Caught error in zone: Exception: Failed to fetch data..!
}
