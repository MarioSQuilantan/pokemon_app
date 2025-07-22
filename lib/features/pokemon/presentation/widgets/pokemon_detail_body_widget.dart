import 'package:flutter/material.dart';
import 'widgets.dart';

import '../../domain/domain.dart';

class PokemonDetailBodyWidget extends StatelessWidget {
  final PokemonDetailEntity pokemon;

  const PokemonDetailBodyWidget({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Image.network(
            pokemon.imageUrl,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(
            pokemon.name,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pokemon.types.map((type) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: _typeColor(type),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                type.toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
        const Text(
          "About",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InfoColumnWidget(
              icon: Icons.monitor_weight,
              label: 'Weight',
              value: '${pokemon.weight / 10} kg',
            ),
            InfoColumnWidget(
              icon: Icons.height,
              label: 'Height',
              value: '${pokemon.height / 10} m',
            ),
            InfoColumnWidget(
              icon: Icons.bolt,
              label: 'Abilities',
              value: pokemon.abilities.join(', '),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            pokemon.description ?? 'No description available.',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black87),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Base Stats",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        ...pokemon.stats.entries.map((entry) => StatsBarWidget(label: entry.key, value: entry.value)),
      ],
    );
  }

  Color _typeColor(String type) {
    switch (type.toLowerCase()) {
      case 'grass':
        return Colors.green;
      case 'poison':
        return Colors.purple;
      case 'fire':
        return Colors.red;
      case 'water':
        return Colors.blue;
      case 'electric':
        return Colors.amber;
      default:
        return Colors.grey;
    }
  }
}



