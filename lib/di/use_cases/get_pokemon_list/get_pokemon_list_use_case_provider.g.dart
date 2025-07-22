// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pokemon_list_use_case_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getPokemonListUseCase)
const getPokemonListUseCaseProvider = GetPokemonListUseCaseProvider._();

final class GetPokemonListUseCaseProvider
    extends
        $FunctionalProvider<
          GetPokemonListUseCase,
          GetPokemonListUseCase,
          GetPokemonListUseCase
        >
    with $Provider<GetPokemonListUseCase> {
  const GetPokemonListUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPokemonListUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPokemonListUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetPokemonListUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetPokemonListUseCase create(Ref ref) {
    return getPokemonListUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPokemonListUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPokemonListUseCase>(value),
    );
  }
}

String _$getPokemonListUseCaseHash() =>
    r'b50ce164ed8855685f73ad88151e4dee2816d0e1';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
