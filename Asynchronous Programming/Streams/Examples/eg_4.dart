import 'dart:async';

/// Broadcast stream

StreamController<int> controller = StreamController.broadcast();

void main() {
  // First listener
  controller.stream.listen((value) {
    print("Listener 1: $value");
  });

  // Second listener
  controller.stream.listen((data) {
    print("Listener 2: $data");
  });

  for (int i = 0; i <= 5; i++) {
    controller.sink.add(i);
  }

  // Second listener
  controller.stream.listen((data) {
    print("Listener 3: $data");
  });

  controller.close();

  // Listener 1: 0
  // Listener 2: 0
  // Listener 1: 1
  // Listener 2: 1
  // Listener 1: 2
  // Listener 2: 2
  // Listener 1: 3
  // Listener 2: 3
  // Listener 1: 4
  // Listener 2: 4
  // Listener 1: 5
  // Listener 2: 5
}
