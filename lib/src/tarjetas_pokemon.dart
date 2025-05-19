import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_modelo.dart';
import 'package:pokedex/utils/color_map.dart';

class TarjetasPokemon extends StatelessWidget {
  const TarjetasPokemon({super.key, required this.pokemon});

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.25),
              blurRadius: 5,
              offset: Offset(10, 10),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          child: SizedBox(
              width: 269,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "#${pokemon.id}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          spacing: 6,
                          children: pokemon.types.map((tipo) {
                            String nombreTipo = tipo.type.name;
      
                            nombreTipo = nombreTipo[0].toUpperCase() +
                                nombreTipo.substring(1);
                            return Container(
                              width: 59,
                              height: 29.86,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: getColorPorTipo(tipo.type.name),
                              ),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    nombreTipo,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 213,
                      width: 231,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: getColorPorTipo(pokemon.types[0].type.name),
                      ),
                      child: Stack(alignment: Alignment.center, children: [
                        Image(
                          image:
                              AssetImage('assets/images/imagenFondoTarjeta.png'),
                          height: 213,
                          width: 231,
                          fit: BoxFit.cover,
                        ),
                        Image(
                          image: NetworkImage(pokemon
                                  .sprites.other?.officialArtwork.frontDefault ??
                              pokemon.sprites.frontDefault),
                          fit: BoxFit.contain,
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                        pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
