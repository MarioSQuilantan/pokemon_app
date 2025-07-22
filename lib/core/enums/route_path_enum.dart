enum RoutePathEnum {
  home('/', 'home'),
  pokemonDetail('/pokemon-detail/:id', 'pokemon-detail');

  final String path;
  final String name;

  const RoutePathEnum(this.path, this.name);
}
