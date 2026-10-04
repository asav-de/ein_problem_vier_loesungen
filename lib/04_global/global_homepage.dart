import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/distributed_quadrant.dart';
import 'package:flutter_application_2/00_general/total_box.dart';
import 'package:flutter_application_2/04_global/counter_notyfier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Variant with global state via Riverpod.
///
/// Each quadrant's buttons change the diagonally opposite counter.
class GlobalHomepage extends ConsumerWidget {
  const GlobalHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final counterNotyfier = ref.read(counterProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 70,
            color: const Color(0xFF1B5E82),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TotalBox(value: counter.sum),
                const Text(
                  'Overengineered Counter',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                TotalBox(value: counter.sum),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: DistributedQuadrant(
                          increment: counterNotyfier.incrementBottomRight,
                          decrement: counterNotyfier.decrementBottomRight,
                          counter: counter.topLeft,
                        ),
                      ),
                      Expanded(
                        child: DistributedQuadrant(
                          increment: counterNotyfier.incrementBottomLeft,
                          decrement: counterNotyfier.decrementBottomLeft,
                          counter: counter.topRight,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: DistributedQuadrant(
                          increment: counterNotyfier.incrementTopRight,
                          decrement: counterNotyfier.decrementTopRight,
                          counter: counter.bottomLeft,
                        ),
                      ),
                      Expanded(
                        child: DistributedQuadrant(
                          increment: counterNotyfier.incrementTopLeft,
                          decrement: counterNotyfier.decrementTopLeft,
                          counter: counter.bottomRight,
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
