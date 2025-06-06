import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_modelo.dart';
import 'package:pokedex/src/tarjetas_pokemon.dart';

class Busqueda extends StatefulWidget {
  const Busqueda({super.key});

  @override
  State<Busqueda> createState() => _BusquedaState();
}

class _BusquedaState extends State<Busqueda> {
  final String _token = "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";
  int pokemonNumeroScrolls = 0;
  PokemonModel? pokemonModel;
  List<PokemonModel> pokemons = [];
  @override
  void initState() {
    super.initState();
    getPokemons();
  }

  Future<void> getPokemons() async {
    int offset = pokemonNumeroScrolls * 10;
    pokemonNumeroScrolls++;

    

    List<dynamic> urlPokemons = responseListView.data["results"]
        .map<dynamic>((pokemon) => pokemon["url"])
        .toList();

    for (dynamic url in urlPokemons) {
      final response = await Dio().get(url,
          options: Options(headers: {
            "Authorization": "token $_token",
          }));
      pokemons.add(PokemonModel.fromJson(response.data));
    }

    setState(() {});
  }

  final TextEditingController _controladorTextoBarraBusqueda =
      TextEditingController();
  final ScrollController _controladorScroll = ScrollController();

  void _evaluarTextoBusqueda() {
    final texto = _controladorTextoBarraBusqueda.text.trim();
    if (texto.isNotEmpty) {
      _consultarApi(texto);
    }
  }

  Future<void> _consultarApi(String texto) async {}

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
                controller: _controladorTextoBarraBusqueda,
                elevation: WidgetStateProperty.all(10),
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
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 700,
              height: MediaQuery.of(context).size.height * 0.65,
              child: ListView.builder(
                controller: _controladorScroll,
                itemCount: pokemons.isEmpty ? 1 : pokemons.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.pushNamed(context, '/pokemon');
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: pokemons.isNotEmpty
                          ? TarjetasPokemon(pokemon: pokemons[index])
                          : const CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controladorScroll.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        backgroundColor: Color.fromARGB(255, 255, 28, 28),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: const Icon(
          Icons.arrow_upward_outlined,
          color: Colors.white,
          size: 38,
        ),
      ),
    );
  }
}
