/// Streams (झरना)
// A Stream is used to handle multiple asynchronous values over time.
// Unlike Future (single value), Stream can emit many values.

// A stream is like a pipe that emits events, you put a value on
// the one end, and if there’s a listener on the other end that
// listener will receive that value. These events can be values
// of any type, errors or a “done” event to signal the end of the stream.

/// Type             Single value         Zero or more values
//  Sync         int                  Iterator
//  Async        Future<int>          Stream<int>

/// Types of Streams:
// 1. Single-subscription Stream  --> can be listened to only one listener.
// 2. Broadcast Stream            --> can be listened to by multiple listeners.

/// Why Stream
// Data keep changing.
// Values come continuously.
// Provides real-time updates (live data).

/// In One Line
// Future: ont-time async result only.
// Stream: continuous async data.
// async*: tells the function is stream generative function.
// yield: emits (निकालना) values into a stream.
// yield*:
// StreamController: manually control stream data.
// Subscriber: listeners, it cab be listen using listen() or StreamBuilder().
// Single subscription stream: allow single listener.
// Broadcast stream: allows multiple listeners.
// sink: input in stream.
// stream: output of stream.
// add(): add data manually in stream.
// listen(): get data from stream.
