// StreamController
import 'dart:async';

StreamController<String> myStreamController = StreamController<String>();

void main() {
  // add names manually
  myStreamController.sink.add('Ratndeep');
  myStreamController.sink.add('Gautam');
  myStreamController.sink.add('Soniyea');
  myStreamController.sink.add('Aparna');
  myStreamController.sink.add('Sonali');

  myStreamController.stream.listen((event) {
    print(event);
  });

  // close stream
  myStreamController.close();
}

// Ratndeep
// Gautam
// Soniyea
// Aparna
// Sonali
