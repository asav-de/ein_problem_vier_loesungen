/// Immutable snapshot of all four counter values.
class CounterState {
  /// Value of the top-left quadrant.
  final int topLeft;

  /// Value of the top-right quadrant.
  final int topRight;

  /// Value of the bottom-left quadrant.
  final int bottomLeft;

  /// Value of the bottom-right quadrant.
  final int bottomRight;

  const CounterState({
    this.topLeft = 0,
    this.topRight = 0,
    this.bottomLeft = 0,
    this.bottomRight = 0,
  });

  /// Returns a copy with the given values replaced.
  CounterState copyWith({
    int? topLeft,
    int? topRight,
    int? bottomLeft,
    int? bottomRight,
  }) => CounterState(
    topLeft: topLeft ?? this.topLeft,
    topRight: topRight ?? this.topRight,
    bottomLeft: bottomLeft ?? this.bottomLeft,
    bottomRight: bottomRight ?? this.bottomRight,
  );

  /// Sum of all four counters.
  int get sum => topLeft + topRight + bottomLeft + bottomRight;
}
