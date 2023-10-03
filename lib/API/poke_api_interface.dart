import 'package:flutter/material.dart';
import 'package:pokedex/Model/pokemon.dart';
import 'package:pokedex/Model/pokemon_item_identifier.dart';
import 'package:pokedex/Model/static_data.dart';

abstract class PokeApiInterface {
  Future<List<PokemonItemIdentifier>> loadPokemonNamesAndIdsAfterFilters(
      String color,
      String type,
      String habitat,
      String pokedexString,
      String searchValue,
      Sort sortBy);
  Future<List<PokemonItemIdentifier>> loadPokemon();
  void fillFilters(List<String> colors, List<String> types,
      List<String> habitats, List<String> pokedexes);
  Future<Pokemon> createPokemon(String pokemonNameOrId, bool isForPokemonItem,
      bool? isPokemonVariety, Color? varietyColor);
  Future<List<List<Pokemon>>> getEvoloutionChain(String evoloutionChainUrl);
  Future<List<Pokemon>> getVarieties(List varietiesList, Color pokemonColor);
}
