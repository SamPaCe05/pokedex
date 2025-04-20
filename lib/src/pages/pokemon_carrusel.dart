import 'package:flutter/material.dart';

class PokemonCarrusel extends StatelessWidget {
  const PokemonCarrusel({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Bulbasaur",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w900, color: Colors.white),
          ),
          Text(
            "#0001",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w900, color: Colors.white),
          )
        ],
      ),
      Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 217, 217, 217),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(40),
            border:
                Border.all(width: 3, color: Color.fromARGB(255, 128, 200, 118)),
            boxShadow: [
              BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 5,
                  spreadRadius: 0,
                  offset: Offset(10, 13))
            ]),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 217, 217, 217),
            ),
            width: 255,
            height: 252,
            child: Image.asset(
              "assets/images/bulbasaur.png",
              fit: BoxFit.contain,
              width: 250.24,
              height: 252,
            ),
          ),
        ),
      ),
    ]);
  }
}
