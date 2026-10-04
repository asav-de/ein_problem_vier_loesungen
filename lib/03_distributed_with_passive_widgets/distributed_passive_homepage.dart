import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/distributed_row.dart';
import 'package:flutter_application_2/00_general/total_box.dart';

/// Like [DistributedHomepage], but rows are passive [DistributedRow] widgets.
///
/// Each quadrant's buttons change the diagonally opposite counter.
class DistributedPassiveHomepage extends StatefulWidget {
  const DistributedPassiveHomepage({super.key});

  @override
  State<DistributedPassiveHomepage> createState() =>
      _DistributedHomepageState();
}

class _DistributedHomepageState extends State<DistributedPassiveHomepage> {
  /// Counter values, one per quadrant.
  final List<int> _counters = [0, 0, 0, 0];

  /// Sum of all counters.
  int get _sumCounter => _counters.fold(0, (a, b) => a + b);

  /// Increments the counter at [index] by 1.
  void _incrementCounter(int index) {
    setState(() {
      _counters[index]++;
    });
  }

  /// Decrements the counter at [index] by 1.
  void _decrementCounter(int index) {
    setState(() {
      _counters[index]--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ===== Top bar =====
          Container(
            height: 70,
            color: const Color(0xFF1B5E82),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TotalBox(value: _sumCounter),
                const Text(
                  'Overengineered Counter',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                TotalBox(value: _sumCounter),
              ],
            ),
          ),
          // ===== 2x2 grid =====
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: DistributedRow(
                    firstIncrement: () => _incrementCounter(3),
                    firstDecrement: () => _decrementCounter(3),
                    secondIncrement: () => _incrementCounter(2),
                    secondDecrement: () => _decrementCounter(2),
                    firstCount: _counters[0],
                    secondCount: _counters[1],
                  ),
                ),
                Expanded(
                  child: DistributedRow(
                    firstIncrement: () => _incrementCounter(1),
                    firstDecrement: () => _decrementCounter(1),
                    secondIncrement: () => _incrementCounter(0),
                    secondDecrement: () => _decrementCounter(0),
                    firstCount: _counters[2],
                    secondCount: _counters[3],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
