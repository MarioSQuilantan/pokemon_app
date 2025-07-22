// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pokemon_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(GetPokemonDetails)
const getPokemonDetailsProvider = GetPokemonDetailsFamily._();

final class GetPokemonDetailsProvider
    extends $AsyncNotifierProvider<GetPokemonDetails, PokemonDetailEntity> {
  const GetPokemonDetailsProvider._({
    required GetPokemonDetailsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'getPokemonDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getPokemonDetailsHash();

  @override
  String toString() {
    return r'getPokemonDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetPokemonDetails create() => GetPokemonDetails();

  @override
  bool operator ==(Object other) {
    return other is GetPokemonDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getPokemonDetailsHash() => r'b4b9365326399d35006860e043978efc96631ded';

final class GetPokemonDetailsFamily extends $Family
    with
        $ClassFamilyOverride<
          GetPokemonDetails,
          AsyncValue<PokemonDetailEntity>,
          PokemonDetailEntity,
          FutureOr<PokemonDetailEntity>,
          int
        > {
  const GetPokemonDetailsFamily._()
    : super(
        retry: null,
        name: r'getPokemonDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetPokemonDetailsProvider call(int id) =>
      GetPokemonDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'getPokemonDetailsProvider';
}

abstract class _$GetPokemonDetails extends $AsyncNotifier<PokemonDetailEntity> {
  late final _$args = ref.$arg as int;
  int get id => _$args;

  FutureOr<PokemonDetailEntity> build(int id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<PokemonDetailEntity>, PokemonDetailEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PokemonDetailEntity>, PokemonDetailEntity>,
              AsyncValue<PokemonDetailEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
