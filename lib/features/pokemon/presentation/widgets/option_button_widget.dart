import 'package:flutter/material.dart';

import '../presentation.dart';

class OptionButtonWidget extends StatelessWidget {
  final String label;
  final PokemonOrder value;
  final PokemonOrder groupValue;
  final Function(PokemonOrder?) onChanged;
  const OptionButtonWidget({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile<PokemonOrder>(
      title: Text(label),
      value: value,
      groupValue: groupValue,
      activeColor: Colors.red,
      contentPadding: EdgeInsets.zero,
      onChanged: (order) => onChanged(order),
    );
  }
}
