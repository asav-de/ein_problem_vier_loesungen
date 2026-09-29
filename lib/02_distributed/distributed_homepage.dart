import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/distributed_quadrant.dart';
import 'package:flutter_application_2/00_general/total_box.dart';

/// Variant where state is distributed across child widgets (not yet implemented).
class DistributedHomepage extends StatefulWidget {
  const DistributedHomepage({super.key});

  @override
  State<DistributedHomepage> createState() => _DistributedHomepageState();
}

class _DistributedHomepageState extends State<DistributedHomepage> {
  /// Counter values, one per quadrant.
  final List<int> _counters = [0, 0, 0, 0];

  int get _sumCounter => _counters.fold(0, (a, b) => a + b);

  /// Increment the corresponding counter by 1.
  void _incrementCounter(int index) {
    setState(() {
      _counters[index]++;
    });
  }

  /// Decrement the corresponding counter by 1.
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
                // --- top row ---
                Expanded(
                  child: Row(
                    children: [
                      // top-left quadrant
                      DistributedQuadrant(
                        increment: () => _incrementCounter(3),
                        decrement: () => _decrementCounter(3),
                        counter: _counters[0],
                      ),
                      // top-right quadrant
                      DistributedQuadrant(
                        increment: () => _incrementCounter(2),
                        decrement: () => _decrementCounter(2),
                        counter: _counters[1],
                      ),
                    ],
                  ),
                ),
                // --- bottom row ---
                Expanded(
                  child: Row(
                    children: [
                      // bottom-left quadrant
                      DistributedQuadrant(
                        increment: () => _incrementCounter(1),
                        decrement: () => _decrementCounter(1),
                        counter: _counters[2],
                      ),
                      // bottom-right quadrant
                      DistributedQuadrant(
                        increment: () => _incrementCounter(0),
                        decrement: () => _decrementCounter(0),
                        counter: _counters[3],
                      ),
                    ],
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
