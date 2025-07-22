import '../../../../../di/use_cases/get_pokemon_details/get_pokemon_details_use_case_provider.dart';
import '../../../domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_pokemon_details_provider.g.dart';

@riverpod
class GetPokemonDetails extends _$GetPokemonDetails {
  @override
   Future<PokemonDetailEntity> build(int id) async {
    final result = await ref
        .read(getPokemonDetailsUseCaseProvider)(id)
        .run();

    return result.match(
      (error) => throw Exception(error.message),
      (data) => data,
    );
  }
}
