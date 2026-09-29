import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/distributed_quadrant.dart';

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

  final Function firstIncrement;
  final Function secondIncrement;
  final Function firstDecrement;
  final Function secondDecrement;
  final int firstCount;
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
