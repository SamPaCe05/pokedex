import 'package:flutter/material.dart';
import 'package:pokedex/src/pages/inicio.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      home: Inicio(),
    );
  }
}
