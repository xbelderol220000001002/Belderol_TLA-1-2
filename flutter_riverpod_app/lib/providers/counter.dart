// lib/providers/counter.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';

// The Counter class holds the count value.
class Counter {
  final int count;
  Counter(this.count);
}

// The CounterNotifier class manages the state of the Counter.
class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier() : super(Counter(0)); // Initial counter value is 0.

  // Method to increment the counter.
  void increment() {
    state =
        Counter(state.count + 1); // Update the state with incremented count.
  }

  // Method to decrement the counter.
  void decrement() {
    state =
        Counter(state.count - 1); // Update the state with decremented count.
  }
}

// The counterProvider allows us to access and update the Counter state.
final counterProvider = StateNotifierProvider<CounterNotifier, Counter>((ref) {
  return CounterNotifier();
});
