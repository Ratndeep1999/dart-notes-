/// Error Handling with async/await

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception("Failed to fetch data...!");
  });
}

Future<void> main() async {
  try {
    String data = await fetchData();
    print(data);
  } catch (e) {
    print("Caught error: $e");
  }
}
