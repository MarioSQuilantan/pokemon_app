import 'package:fpdart/fpdart.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';


class GetPokemonListUseCase {
  final PokemonRepository repository;

  GetPokemonListUseCase(this.repository);

  TaskEither<NetworkException, List<PokemonEntity>> call(
    int offset,
    int limit,
  ) {
    return repository.getPokemonList( offset, limit);
  }

}
