/// What is Asynchronous Programming?
// Asynchronous programming allows a program to perform time-consuming tasks
// (like API calls, database operations, or file I/O) without blocking the main thread.
// This keeps the app responsive while the task runs in the background.

/// Synchronous Programming
// Code runs line by line, and each line must complete before
// next one start. There is no background execution; everything
// happens in a single sequence on the main thread.

/// Asynchronous Programming
// Allows long-running tasks to execute in the background without blocking
// the main thread, keeping the UI responsive.
// Time-consuming I/O tasks are scheduled on the event loop (non-blocking).
// CPU-intensive tasks require isolates.
// Once the task completes, it notifies the main thread to update the UI.

/// Synchronous blocks execution, asynchronous allows non-blocking execution.

/// Future
// Represents a value that will be available in the future it can be a
// value or error.

// Example:
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Data fetched!';
  });
}

/// Async & Await
// async keyword is used to define an asynchronous function, while
// await keyword paused execution of the function until the future complete.

void main() {
  // Synchronous:
  print("First Operation");
  print("Second Big Operation");
  print("Third Operation");
  print("Last Operation");
  // First Operation
  // Second Big Operation
  // Third Operation
  // Last Operation

  // Asynchronous:
  print("First Operation");
  Future.delayed(Duration(seconds: 3), () => print('Second Big Operation'));
  print("Third Operation");
  print("Last Operation");
  // First Operation
  // Third Operation
  // Last Operation
  // Second Big Operation

  // Async & Await
  print("Start");
  getData();
  print("End");
  // Start
  // End
  // Hello
}

// This function used async and await
void getData() async {
  String data = await middleFunction();
  print(data);
}

// This function return value after 5 second delayed
Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 5), () => "Hello");
}
