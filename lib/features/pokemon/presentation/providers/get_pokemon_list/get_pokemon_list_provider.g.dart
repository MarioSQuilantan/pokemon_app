// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pokemon_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(GetPokemonList)
const getPokemonListProvider = GetPokemonListProvider._();

final class GetPokemonListProvider
    extends $AsyncNotifierProvider<GetPokemonList, List<PokemonEntity>> {
  const GetPokemonListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPokemonListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPokemonListHash();

  @$internal
  @override
  GetPokemonList create() => GetPokemonList();
}

String _$getPokemonListHash() => r'33b19db7c7ed62bf9a96487da7f910c1f9aef7ba';

abstract class _$GetPokemonList extends $AsyncNotifier<List<PokemonEntity>> {
  FutureOr<List<PokemonEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<PokemonEntity>>, List<PokemonEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<PokemonEntity>>, List<PokemonEntity>>,
              AsyncValue<List<PokemonEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
