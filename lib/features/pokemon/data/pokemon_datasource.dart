import 'package:fpdart/fpdart.dart';

import '../../../core/core.dart';
import 'data.dart';

abstract interface class PokemonDatasource {
  TaskEither<NetworkException, List<PokemonModel>> fetchPokemonList(int offset, int limit);
  TaskEither<NetworkException, PokemonDetailModel> getPokemonDetail(int id);
}
