
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/pokemon/data/data.dart';
import '../../../features/pokemon/domain/domain.dart';
import '../../di.dart';

part 'pokemon_repository.g.dart';

@riverpod
PokemonRepository pokemonRepository (Ref ref) {
  final datasource = ref.watch(pokemonDatasourceProvider);
  return PokemonRepositoryImpl(datasource);
}
