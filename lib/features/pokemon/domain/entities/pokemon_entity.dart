import 'package:equatable/equatable.dart';

class PokemonEntity extends Equatable {
  final String name;
  final int id;

  const PokemonEntity({required this.name, required this.id});

  @override
  List<Object?> get props => [name, id];
}
