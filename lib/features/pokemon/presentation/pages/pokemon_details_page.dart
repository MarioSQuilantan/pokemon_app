import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/core.dart';
import '../widgets/widgets.dart';

import '../providers/get_pokemon_details/get_pokemon_details_provider.dart';

class PokemonDetailsPage extends ConsumerWidget {
  static RoutePathEnum path = RoutePathEnum.pokemonDetail;

  final int pokemonId;

  const PokemonDetailsPage({super.key, required this.pokemonId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getPokemonDetailsProvider(pokemonId));

    return state.when(
      data: (pokemon) => Scaffold(
        backgroundColor: Colors.green[400],
        body: SafeArea(
          child: Column(
            children: [
              PokemonDetailHeaderWidget(pokemon: pokemon),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: PokemonDetailBodyWidget(pokemon: pokemon),
                ),
              ),
            ],
          ),
        ),
      ),
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(child: Text(e.toString())),
      ),
    );
  }
}
