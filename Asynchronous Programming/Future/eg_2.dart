void main() {
  print("Fetching data...");

  fetchData()
      .then((data) {
        print(data);
      })
      .catchError((error) {
        print('Error: $error');
      })
      .whenComplete(() {
        print("Fetch operation complete");
      });
}

// Asynchronous function thar return data
Future<String> fetchData() async {
  String data = await Future.delayed(Duration(seconds: 5), () => 'Sonali');
  return data;
}
