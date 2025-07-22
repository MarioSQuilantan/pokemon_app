// data/models/pokemon_detail_model.dart

import '../../domain/domain.dart';

class PokemonDetailModel {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> abilities;
  final List<String> types;
  final int weight;
  final int height;
  final Map<String, int> stats;
  final String? description;

  PokemonDetailModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.abilities,
    required this.types,
    required this.weight,
    required this.height,
    required this.stats,
    this.description,
  });

  factory PokemonDetailModel.fromJson(Map<String, dynamic> json) {
    final abilities = (json['abilities'] as List)
        .map<String>((a) => a['ability']['name'] as String)
        .toList();

    final types = (json['types'] as List)
        .map<String>((t) => t['type']['name'] as String)
        .toList();

    final stats = <String, int>{};
    for (final stat in json['stats'] as List) {
      final name = stat['stat']['name'] as String;
      final value = stat['base_stat'] as int;
      stats[name.toUpperCase()] = value;
    }

    final imageUrl = json['sprites']['other']['official-artwork']['front_default'] as String;

    return PokemonDetailModel(
      id: json['id'] as int,
      name: json['name'] as String,
      imageUrl: imageUrl,
      abilities: abilities,
      types: types,
      weight: json['weight'] as int,
      height: json['height'] as int,
      stats: stats,
      description: null,
    );
  }

  PokemonDetailEntity toEntity() {
    return PokemonDetailEntity(
      id: id,
      name: name,
      imageUrl: imageUrl,
      abilities: abilities,
      types: types,
      weight: weight,
      height: height,
      stats: stats,
      description: description,
    );
  }
}
