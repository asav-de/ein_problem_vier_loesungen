import 'package:flutter/material.dart';

/// Displays a single integer value in a compact colored box (used in the top bar).
class TotalBox extends StatelessWidget {
  /// The number to display.
  final int value;

  const TotalBox({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      color: const Color(0xFF1A9FD9), // light blue
      child: Center(
        child: Text('$value', style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
