//-------------------------https://pub.dev/packages/event-------------------
// dart code file
import 'package:event/event.dart';

void main() {
  /// The counter class is defined further below.
  var c = Counter();

  // Subscribe to the custom event
  c.counterIncremented.subscribe((args) => print(c.value));

  c.increment();
  c.increment();
  c.reset();

  // outputs...
  // 1
  // 2
  // 0
}

//-----------------

/// Represents a number counter that can be incremented.
/// Notifies [Event] handlers (subscribers) when incremented.
class Counter {
  /// The current [Counter] value.
  int value = 0;

  /// A custom [Event]
  final counterIncremented = Event();

  /// Increment the [Counter] [value] by 1.
  void increment() {
    value++;
    counterIncremented.broadcast(); // Broadcast the change
  }

  /// Reset the [Counter] value to 0.
  void reset() {
    value = 0;
    counterIncremented.broadcast(); // Broadcast the change
  }
}
