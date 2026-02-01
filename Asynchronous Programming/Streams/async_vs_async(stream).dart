/// async vs async*
///      async                               async*
// Returns a Future                          Return a Stream
// Used for one-time asynchronous work       Used for continuous asynchronous data
// Emit one value                            Emits multiple values over time
// Uses await                                Uses yield / yield*
// Result is wrapped in a Future             Result is wrapped in a stream
// Best fro API calls, file read once        Best for timers, live updates