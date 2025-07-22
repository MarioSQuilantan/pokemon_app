import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/pokemon/data/data.dart';
import '../../services/dio/dio_network_service_provider.dart';

part 'pokemon_datasource_provider.g.dart';

@riverpod
PokemonDatasource pokemonDatasource(Ref ref) {
  final network = ref.watch(dioNetworkServiceProvider);
  return PokemonRemoteDatasourceImpl(network);
}
