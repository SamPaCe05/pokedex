import 'package:flutter/material.dart';

class Busqueda extends StatefulWidget {
  const Busqueda({super.key});

  @override
  State<Busqueda> createState() => _BusquedaState();
}

class _BusquedaState extends State<Busqueda> {
  final TextEditingController _controller = TextEditingController();

  void _evaluarTextoBusqueda() {
    final texto = _controller.text.trim();
    if (texto.isNotEmpty) {
      _consultarApi(texto);
    }
  }

  void _consultarApi(String texto) async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/pokedexLogo.png",
                    height: 83,
                    width: 229,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "¡Explorar el Mundo \n Pokémon!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 360.43,
              height: 53,
              child: SearchBar(
                controller: _controller,
                elevation: WidgetStateProperty.all(20),
                hintText: "Buscar Pokémon...",
                hintStyle: WidgetStateProperty.all(
                  const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                textStyle: WidgetStateProperty.all(
                  const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                onSubmitted: (_) {
                  _evaluarTextoBusqueda();
                },
                backgroundColor:
                    WidgetStateProperty.all(Color.fromARGB(255, 255, 28, 28)),
                leading: IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 32,
                  ),
                  onPressed: () {
                    _evaluarTextoBusqueda();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
