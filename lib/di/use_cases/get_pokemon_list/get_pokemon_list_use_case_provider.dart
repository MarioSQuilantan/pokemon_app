import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/pokemon/application/application.dart';
import '../../di.dart';

part 'get_pokemon_list_use_case_provider.g.dart';

@riverpod
GetPokemonListUseCase getPokemonListUseCase(Ref ref) {
  final repository = ref.watch(pokemonRepositoryProvider);
  return GetPokemonListUseCase(repository);
}
