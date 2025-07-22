// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pokemon_details_use_case_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getPokemonDetailsUseCase)
const getPokemonDetailsUseCaseProvider = GetPokemonDetailsUseCaseProvider._();

final class GetPokemonDetailsUseCaseProvider
    extends
        $FunctionalProvider<
          GetPokemonDetailsUseCase,
          GetPokemonDetailsUseCase,
          GetPokemonDetailsUseCase
        >
    with $Provider<GetPokemonDetailsUseCase> {
  const GetPokemonDetailsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPokemonDetailsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPokemonDetailsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetPokemonDetailsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetPokemonDetailsUseCase create(Ref ref) {
    return getPokemonDetailsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPokemonDetailsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPokemonDetailsUseCase>(value),
    );
  }
}

String _$getPokemonDetailsUseCaseHash() =>
    r'fa8b821620381a333a45fa2e2544b1983a59c13b';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
