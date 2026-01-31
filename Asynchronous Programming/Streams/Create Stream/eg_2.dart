// Generative Function
import 'dart:math';

// simple
Stream<String> names() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Ratndeep';
  await Future.delayed(Duration(seconds: 1));
  yield 'Sonali';
  await Future.delayed(Duration(seconds: 1));
  yield 'Aparna';
}

// using for loop
Stream<String> countNames() async* {
  List names = ['Sonali', 'Ratndeep', 'Aparna', 'Abhi', 'Soniyea'];
  for (int i = 0; i <= 4; i++) {
    await Future.delayed(Duration(seconds: 1)); // Simulating asynchronous work
    yield names[i]; // Yielding values to the stream
  }
}

// using random function
Stream<String> randomNames() async* {
  List names = ['Ratndeep', 'Sonali', 'Gautam', 'Aparna', 'Soniyea', 'Rahul'];
  final random = Random();
  for (int i = 0; i < 10; i++) {
    int name = random.nextInt(5);
    await Future.delayed(Duration(seconds: 1));
    yield names[name];
  }
}

Future<void> main() async {
  Stream<String> names = randomNames();

  // First listening type
  await for (String name in names) {
    print(name);
  }

  // Second listening type
  // names.listen((name) {
  //   print(name);
  // });
}

// Ratndeep
// Gautam
// Soniyea
// Gautam
// Sonali
// Soniyea
// Aparna
// Gautam
// Aparna
// Gautam