import 'package:fpdart/fpdart.dart';

import '../../../core/core.dart';
import 'data.dart';

class PokemonRemoteDatasourceImpl implements PokemonDatasource {
  final NetworkService network;
  PokemonRemoteDatasourceImpl(this.network);

  @override
  TaskEither<NetworkException, List<PokemonModel>> fetchPokemonList(
    int offset,
    int limit,
  ) {
    return network
        .get<Map<String, dynamic>>(
          '/pokemon',
          queryParameters: {'offset': offset, 'limit': limit},
        )
        .map((data) {
          final results = data['results'] as List<dynamic>;
          return PokemonModel.fromJsonList(results);
        });
  }

  @override
  TaskEither<NetworkException, PokemonDetailModel> getPokemonDetail(int id) {
    return network.get<Map<String, dynamic>>('/pokemon/$id').map((data) {
      return PokemonDetailModel.fromJson(data);
    });
  }
}
