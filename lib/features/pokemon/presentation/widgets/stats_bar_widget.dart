import 'package:flutter/material.dart';

class StatsBarWidget extends StatelessWidget {
  final String label;
  final int value;

  const StatsBarWidget({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        children: [
          SizedBox(width: 40, child: Text(label.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold))),
          SizedBox(
            width: 40,
            child: Text(value.toString().padLeft(3, '0')),
          ),
          Expanded(
            child: LinearProgressIndicator(
              value: value / 100,
              color: Colors.green,
              backgroundColor: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}
