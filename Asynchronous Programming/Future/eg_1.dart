void main() {
  print("Start");
  getName();
  print("End");
  // Start
  // End
  // Hello
}

// This function wait to get data from another function using async & await
void getName() async {
  String data = await middleFunction();
  print(data);
}

// Function that return data
Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 5), () => "Sonali");
}
