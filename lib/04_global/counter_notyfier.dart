import 'package:flutter_application_2/04_global/counter_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Global provider exposing [CounterState] and its [CounterNotyfier].
final counterProvider = NotifierProvider<CounterNotyfier, CounterState>(
  CounterNotyfier.new,
);

/// Holds the counter state and the actions that change it.
class CounterNotyfier extends Notifier<CounterState> {
  /// Initial state: all counters at 0.
  @override
  CounterState build() =>
      CounterState(topLeft: 0, topRight: 0, bottomLeft: 0, bottomRight: 0);

  /// Increments or decrements a single counter by 1.
  void incrementTopLeft() => state = state.copyWith(topLeft: state.topLeft + 1);

  void decrementTopLeft() => state = state.copyWith(topLeft: state.topLeft - 1);

  void incrementTopRight() =>
      state = state.copyWith(topRight: state.topRight + 1);

  void decrementTopRight() =>
      state = state.copyWith(topRight: state.topRight - 1);

  void incrementBottomLeft() =>
      state = state.copyWith(bottomLeft: state.bottomLeft + 1);

  void decrementBottomLeft() =>
      state = state.copyWith(bottomLeft: state.bottomLeft - 1);

  void incrementBottomRight() =>
      state = state.copyWith(bottomRight: state.bottomRight + 1);

  void decrementBottomRight() =>
      state = state.copyWith(bottomRight: state.bottomRight - 1);
}
