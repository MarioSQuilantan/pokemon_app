
import 'package:fpdart/fpdart.dart';

import '../../../core/core.dart';
import 'domain.dart';

abstract interface class PokemonRepository {
  TaskEither<NetworkException, List<PokemonEntity>> getPokemonList(int offset,int limit);
  TaskEither<NetworkException, PokemonDetailEntity> getPokemonDetail(int id);
}
