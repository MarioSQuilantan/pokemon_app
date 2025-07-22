import 'package:flutter/material.dart';

import '../../domain/domain.dart';

class PokemonDetailHeaderWidget extends StatelessWidget {
  final PokemonDetailEntity pokemon;

  const PokemonDetailHeaderWidget({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            '#${pokemon.id.toString().padLeft(3, '0')}',
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
