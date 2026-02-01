import 'dart:math';

Stream<String> names() async* {
  List names = ['Gautam', 'Soniyea', 'Ratndeep', 'Sonali', 'Aparna'];

  final random = Random();
  for (int i = 0; i <= names.length; i++) {
    await Future.delayed(const Duration(seconds: 2));
    yield names[random.nextInt(names.length)];
  }
}

void main() {
  names().forEach(print);
  // Gautam
  // Gautam
  // Soniyea
  // Ratndeep
  // Aparna
  // Aparna
}
