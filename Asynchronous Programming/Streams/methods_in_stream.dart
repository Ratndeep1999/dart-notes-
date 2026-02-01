/// Methods

/// listen
// It starts listening to a stream and returns a StreamSubscription
// representing an active connection to the stream.

//  A stream-subscription allows to:
// pause the data flow.
// resume after pause.
// cancel the subscription completely.

// eg.
// final subscription = myStream.listen(data) {
//   print(data);
// }

/// onError
// Streams can emit errors just like Futures.
// Using onError(), you can catch and handle errors
// while listening to the stream.

// eg.
// myStream.listen(
//   (data) {
//     print(data);
//   },
//   onError: (error) {
//     print(error);
//   },
// );

/// cancelOnError
// Controls whether a stream subscription is cancelled
// automatically when an error occurs.

// By default, it is true (subscription stops on error).
// Set it to false to keep receiving data even after an error.

// eg.
// myStream.listen(
//   (data) => print(data),
//   onError: (error) => print(error),
//   cancelOnError: false,
// );

/// onDone
// Called when a stream finishes sending all data.
// Use to run final logic after completion
// (e.g., file fully read, API stream closed).

// eg.
// myStream.listen(
//   (data) => print(data),
//   onDone: () {
//     print("Stream completed");
//   },
// );