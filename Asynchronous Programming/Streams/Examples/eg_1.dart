/// Example 1
Stream<String> femaleNames() async* {
  yield 'Aparna';
  yield 'Sonali';
}

Stream<String> humanNames() async* {
  yield* femaleNames(); // forwards all values from femaleNames
  yield 'Gautam';
}

/// Example 2
Stream<int> str(int n) async* {
  if (n > 0) {
    await Future.delayed(Duration(seconds: 2));
    yield n;
    yield* str(n - 2);
  }
}

void main() {
  // Example 1
  humanNames().listen((data) {
    print(data);
  });
  // Aparna
  // Sonali
  // Gautam

  // Example 2
  str(10).forEach(print);
  // 10
  // 8
  // 6
  // 4
  // 2
}
