/// Stream collection
Stream<String> getUserNames() {
  return Stream.fromIterable(['Ratndeep', 'Aparna', 'Sonali', 'Gautam']);
}

Future<void> main() async {
  await for (String name in getUserNames()) {
    print(name);
  }
}

// Ratndeep
// Aparna
// Sonali
// Gautam
