import 'package:flutter/material.dart';

import 'package:pokedex/src/routes/index.dart';

class App extends StatelessWidget {
  App({super.key});

  final _routes = {
    '/': (BuildContext context) => const Inicio(),
    '/busqueda': (BuildContext context) => const Busqueda(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      initialRoute: '/',
      routes: _routes,
    );
  }
}
