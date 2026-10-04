import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/quadrant.dart';
import 'package:flutter_application_2/00_general/total_box.dart';

/// Screen with four counters, state stored locally in this widget.
///
/// Each quadrant's buttons change the diagonally opposite counter.
class LocalHomepage extends StatefulWidget {
  const LocalHomepage({super.key});

  @override
  State<LocalHomepage> createState() => _LocalHomepageState();
}

class _LocalHomepageState extends State<LocalHomepage> {
  /// Counter values, one per quadrant.
  int _counter_1 = 0;
  int _counter_2 = 0;
  int _counter_3 = 0;
  int _counter_4 = 0;

  /// Sum of all counters.
  int get _sumCounter => _counter_1 + _counter_2 + _counter_3 + _counter_4;

  /// Increment the diagonally opposite counter by 1.
  void _incrementCounter_1() {
    setState(() {
      _counter_4++;
    });
  }

  void _incrementCounter_2() {
    setState(() {
      _counter_3++;
    });
  }

  void _incrementCounter_3() {
    setState(() {
      _counter_2++;
    });
  }

  void _incrementCounter_4() {
    setState(() {
      _counter_1++;
    });
  }

  /// Decrement the diagonally opposite counter by 1.
  void _decrementCounter_1() {
    setState(() {
      _counter_4--;
    });
  }

  void _decrementCounter_2() {
    setState(() {
      _counter_3--;
    });
  }

  void _decrementCounter_3() {
    setState(() {
      _counter_2--;
    });
  }

  void _decrementCounter_4() {
    setState(() {
      _counter_1--;
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
                      Quadrant(
                        increment: _incrementCounter_1,
                        decrement: _decrementCounter_1,
                        counter: _counter_1,
                      ),
                      // top-right quadrant
                      Quadrant(
                        increment: _incrementCounter_2,
                        decrement: _decrementCounter_2,
                        counter: _counter_2,
                      ),
                    ],
                  ),
                ),
                // --- bottom row ---
                Expanded(
                  child: Row(
                    children: [
                      // bottom-left quadrant
                      Quadrant(
                        increment: _incrementCounter_3,
                        decrement: _decrementCounter_3,
                        counter: _counter_3,
                      ),
                      // bottom-right quadrant
                      Quadrant(
                        increment: _incrementCounter_4,
                        decrement: _decrementCounter_4,
                        counter: _counter_4,
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
