// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_datasource_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(pokemonDatasource)
const pokemonDatasourceProvider = PokemonDatasourceProvider._();

final class PokemonDatasourceProvider
    extends
        $FunctionalProvider<
          PokemonDatasource,
          PokemonDatasource,
          PokemonDatasource
        >
    with $Provider<PokemonDatasource> {
  const PokemonDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonDatasourceHash();

  @$internal
  @override
  $ProviderElement<PokemonDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PokemonDatasource create(Ref ref) {
    return pokemonDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonDatasource>(value),
    );
  }
}

String _$pokemonDatasourceHash() => r'9470545dcf9973c2135253e5d52b22814d144167';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
