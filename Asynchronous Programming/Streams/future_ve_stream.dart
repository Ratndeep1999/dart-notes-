/// Stream vs Future
/// Future                               Stream
// Represents a value or error           Represents a sequence of
// that will be available once in        asynchronous events
// in the future.
// Provides only one value.              Provides zero,one, or many values.
// Used for one time operations.         Used for continuous data.
// Best for API calls, file load.        Best for live data, Firebase, events.
// Uses FutureBuilder i flutter.         Uses StreamBuilder in flutter.
// Cannot listen to continuous changes.  Can listen to real-time changes.
// Syntax: Future<T>                     Syntax: Stream<T>
