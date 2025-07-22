import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/pokemon/presentation/presentation.dart';

part 'app_router_provider.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: PokemonListPage.path.path,
        name: PokemonListPage.path.name,
        builder: (context, state) => const PokemonListPage(),
      ),
      GoRoute(
        path: PokemonDetailsPage.path.path,
        name: PokemonDetailsPage.path.name,
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id']!);
          return PokemonDetailsPage(pokemonId: id);
        },
      ),
    ],
  );
}
