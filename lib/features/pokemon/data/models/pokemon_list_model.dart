import '../../domain/domain.dart';

class PokemonModel {
  final String name;
  final String url;

  PokemonModel({required this.name, required this.url});

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      name: json['name'],
      url: json['url'],
    );
  }

  static List<PokemonModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map(
          (json) =>
              PokemonModel.fromJson(json as Map<String, dynamic>),
        )
        .toList();
  }
}

extension PokemonModelMapper on PokemonModel {
  PokemonEntity toEntity() {
    final uri = Uri.parse(url);
    final id = int.tryParse(uri.pathSegments[uri.pathSegments.length - 2]) ?? 0;
    return PokemonEntity(name: name, id: id);
  }
}
