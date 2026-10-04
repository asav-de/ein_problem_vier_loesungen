import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/distributed_quadrant.dart';

/// A row of two [DistributedQuadrant]s that only renders values and forwards callbacks.
class DistributedRow extends StatelessWidget {
  const DistributedRow({
    super.key,
    required this.firstIncrement,
    required this.secondIncrement,
    required this.firstDecrement,
    required this.secondDecrement,
    required this.firstCount,
    required this.secondCount,
  });

  /// Up-button callback of the left quadrant.
  final Function firstIncrement;

  /// Up-button callback of the right quadrant.
  final Function secondIncrement;

  /// Down-button callback of the left quadrant.
  final Function firstDecrement;

  /// Down-button callback of the right quadrant.
  final Function secondDecrement;

  /// Value shown in the left quadrant.
  final int firstCount;

  /// Value shown in the right quadrant.
  final int secondCount;

  @override
  Widget build(context) {
    return Row(
      children: [
        DistributedQuadrant(
          increment: firstIncrement,
          decrement: firstDecrement,
          counter: firstCount,
        ),
        DistributedQuadrant(
          increment: secondIncrement,
          decrement: secondDecrement,
          counter: secondCount,
        ),
      ],
    );
  }
}
