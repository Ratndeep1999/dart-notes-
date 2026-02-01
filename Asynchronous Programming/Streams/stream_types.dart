import 'dart:async';

/// Types of Streams

/// Single Subscription Stream:
// Single-subscription streams (default) allow only one listener.
// They deliver events in order, without missing any value.
// Listening more than once throws an exception because only
// one subscriber can consume the stream.

/// Broadcast Stream
// Broadcast streams allow multiple listeners at the same time.
// Subscribers can listen anytime, and more than one listener
// can receive events simultaneously.They are useful for UI events
// like mouse clicks, button taps, or notifications.

/// Syntax
// StreamController<data_type> controller =
//     StreamController<data_type>.broadcast();

/// Create Stream
StreamController controller = StreamController();
Stream stream = controller.stream;

/// Add value to Stream
// stream.add(3)

/// Subscribe Stream
// stream.listen((event) {
//   print("Event from controller: $event");
// });

/// Manage Stream
// StreamSubscription<int> streamSubscription = stream.listen((value){
//   print("Value from controller: $value");
// });

/// Cancel Stream
// streamSubscription.cancel();

/// Type of classes in stream
// Stream: represents an asynchronous sequence of data/events.

// EventSink: used to add data or errors into a stream
// (data flows from sink to stream).

// StreamController: manages a stream by creating both
// a Stream (output) and an EventSink (input),
// and provides control over the stream lifecycle.

// StreamSubscription: represents an active stream listener
// and allows pausing, resuming, or cancelling the data flow.
