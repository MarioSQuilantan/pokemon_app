import 'package:fpdart/fpdart.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';

class GetPokemonDetailsUseCase {
  final PokemonRepository repository;

  GetPokemonDetailsUseCase(this.repository);

  TaskEither<NetworkException, PokemonDetailEntity> call(int id) {
    return repository.getPokemonDetail( id);
  }

}
