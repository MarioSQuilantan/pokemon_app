import 'package:equatable/equatable.dart';

class PokemonDetailEntity extends Equatable{
   final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final List<String> abilities;
  final int height;
  final int weight;
  final String? description;
  final Map<String, int> stats;

  const PokemonDetailEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.abilities,
    required this.height,
    required this.weight,
    required this.description,
    required this.stats,
  });

  @override
  List<Object?> get props => [id, name, imageUrl, abilities, types];
}
