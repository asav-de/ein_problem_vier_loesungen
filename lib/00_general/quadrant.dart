import 'package:flutter/material.dart';

/// A single counter cell with increment/decrement buttons and a value display.
class Quadrant extends StatelessWidget {
  const Quadrant({
    super.key,
    required this.increment,
    required this.decrement,
    required this.counter,
  });

  /// Called when the up button is pressed.
  final Function increment;

  /// Called when the down button is pressed.
  final Function decrement;

  /// The value displayed in the center.
  final int counter;

  @override
  Widget build(context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF1B5E82)),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 45,
                height: 45,
                color: const Color(0xFF1B5E82),
                child: IconButton(
                  onPressed: () => increment(),
                  icon: const Icon(Icons.arrow_upward, color: Colors.white),
                ),
              ),
              Container(
                width: 130,
                height: 45,
                color: const Color(0xFF8BC98A),
                child: Center(child: Text('$counter')),
              ),
              Container(
                width: 45,
                height: 45,
                color: const Color(0xFF1B5E82),
                child: IconButton(
                  onPressed: () => decrement(),
                  icon: const Icon(Icons.arrow_downward, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
