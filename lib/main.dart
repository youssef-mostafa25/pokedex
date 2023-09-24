import 'package:flutter/material.dart';
import 'package:pokedex/screens/pokemon_home.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
          foregroundColor: Colors.white,
          title: const Text('Pokedéx'),
        ),
        body: const PokemonHomeScreen(),
      ),
    );
  }
}