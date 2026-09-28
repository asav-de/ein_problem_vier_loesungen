import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/total_box.dart';

class LocalHomepage extends StatefulWidget {
  const LocalHomepage({super.key});

  @override
  State<LocalHomepage> createState() => _LocalHomepageState();
}

class _LocalHomepageState extends State<LocalHomepage> {
  int _counter_1 = 0;
  int _counter_2 = 0;
  int _counter_3 = 0;
  int _counter_4 = 0;

  void _incrementCounter_1() {
    setState(() {
      _counter_3++;
    });
  }

  void _incrementCounter_2() {
    setState(() {
      _counter_2++;
    });
  }

  void _incrementCounter_3() {
    setState(() {
      _counter_3++;
    });
  }

  void _incrementCounter_4() {
    setState(() {
      _counter_4++;
    });
  }

  void _decrementCounter_1() {
    setState(() {
      _counter_3--;
    });
  }

  void _decrementCounter_2() {
    setState(() {
      _counter_2--;
    });
  }

  void _decrementCounter_3() {
    setState(() {
      _counter_3--;
    });
  }

  void _decrementCounter_4() {
    setState(() {
      _counter_4--;
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
                const TotalBox(value: 44),
                const Text(
                  'Overengineered Counter',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const TotalBox(value: 44),
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
                      Expanded(
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
                                    onPressed: _incrementCounter_1,
                                    icon: const Icon(
                                      Icons.arrow_upward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  height: 45,
                                  color: const Color(0xFF8BC98A),
                                  child: Center(child: Text('$_counter_1')),
                                ),
                                Container(
                                  width: 45,
                                  height: 45,
                                  color: const Color(0xFF1B5E82),
                                  child: IconButton(
                                    onPressed: _decrementCounter_1,
                                    icon: const Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // top-right quadrant
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF1B5E82)),
                          ),
                          child: const Center(child: Text('TR')),
                        ),
                      ),
                    ],
                  ),
                ),
                // --- bottom row ---
                Expanded(
                  child: Row(
                    children: [
                      // bottom-left quadrant
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF1B5E82)),
                          ),
                          child: const Center(child: Text('BL')),
                        ),
                      ),
                      // bottom-right quadrant
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF1B5E82)),
                          ),
                          child: const Center(child: Text('BR')),
                        ),
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
