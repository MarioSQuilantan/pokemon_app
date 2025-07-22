import 'package:flutter/material.dart';

class InfoColumnWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoColumnWidget({super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 28),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
