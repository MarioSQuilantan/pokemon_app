import 'package:fpdart/fpdart.dart';

import '../../../core/exceptions/network_exception.dart';
import '../domain/domain.dart';
import 'data.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonDatasource remote;

  PokemonRepositoryImpl(this.remote);

  @override
  TaskEither<NetworkException, List<PokemonEntity>> getPokemonList(
    int offset,
    int limit,
  ) {
    return remote
        .fetchPokemonList(offset, limit)
        .map(
          (listOfModels) =>
              listOfModels.map((model) => model.toEntity()).toList(),
        );
  }

  @override
  TaskEither<NetworkException, PokemonDetailEntity> getPokemonDetail(int id) {
    return remote.getPokemonDetail(id).map((model) => model.toEntity());
  }
}
