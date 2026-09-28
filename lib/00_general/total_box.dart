import 'package:flutter/material.dart';

class TotalBox extends StatelessWidget {
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
