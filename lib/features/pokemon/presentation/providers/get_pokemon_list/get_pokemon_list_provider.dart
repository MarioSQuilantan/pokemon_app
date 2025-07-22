import '../../../../../di/use_cases/get_pokemon_list/get_pokemon_list_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/domain.dart';

part 'get_pokemon_list_provider.g.dart';

enum PokemonOrder { number, name }

@riverpod
class GetPokemonList extends _$GetPokemonList {
  final _pageSize = 20;

  PokemonOrder _order = PokemonOrder.number;
  int _offset = 0;
  String _search = '';

  PokemonOrder get order => _order;

  @override
  Future<List<PokemonEntity>> build() async {
    final result = await ref
        .read(getPokemonListUseCaseProvider)(_offset, _pageSize)
        .run();

    return result.match(
      (error) => throw Exception(error.message),
      (data) => data,
    );
  }

  Future<void> loadMore() async {
    _offset += _pageSize;
    final result = await ref
        .read(getPokemonListUseCaseProvider)(_offset, _pageSize)
        .run();

    result.match(
      (error) => state = AsyncError(error.message, StackTrace.current),
      (data) {
        final current = state.value ?? [];
        state = AsyncData([...current, ...data]);
      },
    );
  }

  void setSearch(String query) async {
    _search = query.trim().toLowerCase();

    if (_search.isEmpty) {
      _offset = 0;
      state = const AsyncLoading();
      final result = await ref
          .read(getPokemonListUseCaseProvider)(_offset, _pageSize)
          .run();

      state = result.match(
        (error) => AsyncError(error.message, StackTrace.current),
        (data) => AsyncData(data),
      );
    } else {
      final current = [...?state.value];
      state = AsyncData(_applyFilterAndSort(current));
    }
  }

  void setOrder(PokemonOrder order) {
    _order = order;
    final current = [...?state.value];
    state = AsyncData(_applyFilterAndSort(current));
  }

  List<PokemonEntity> _applyFilterAndSort(
    List<PokemonEntity> data, [
    PokemonOrder? orderOverride,
  ]) {
    var filtered = data;
    if (_search.isNotEmpty) {
      filtered = filtered
          .where((p) => p.name.toLowerCase().contains(_search))
          .toList();
    }

    final orderToUse = orderOverride ?? _order;

    if (orderToUse == PokemonOrder.name) {
      filtered.sort((a, b) => a.name.compareTo(b.name));
    } else {
      filtered.sort((a, b) => a.id.compareTo(b.id));
    }

    return filtered;
  }
}
