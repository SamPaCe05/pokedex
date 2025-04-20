import 'package:flutter/material.dart';
import 'package:pokedex/src/pages/pokemon_carrusel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';

class Pokemon extends StatelessWidget {
  const Pokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 107, 201, 95),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(84),
        child: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: const Color.fromARGB(255, 107, 201, 95),
          flexibleSpace: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 0),
              child: Image.asset("assets/images/pokedexLogo.png",
                  height: 83, width: 289, fit: BoxFit.contain),
            ),
          ),
        ),
      ),
      body: Stack(children: [
        Positioned(
          bottom: 400.84,
          left: -36,
          child: Transform.rotate(
            angle: 134.98 * (pi / 180),
            child: Opacity(
              opacity: 0.73,
              child: Image.asset(
                "assets/images/imagenFondoTarjeta.png",
                height: 105.91,
                width: 105.91,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 630,
          left: 410,
          child: Transform.rotate(
            angle: -134.98 * (pi / 180),
            child: Opacity(
              opacity: 0.73,
              child: Image.asset(
                "assets/images/imagenFondoTarjeta.png",
                height: 105.91,
                width: 105.91,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 210,
          left: 410,
          child: Transform.rotate(
            angle: -134.98 * (pi / 180),
            child: Opacity(
              opacity: 0.73,
              child: Image.asset(
                "assets/images/imagenFondoTarjeta.png",
                height: 105.91,
                width: 105.91,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -490,
          left: -130,
          child: Transform.rotate(
            angle: -134.98 * (pi / 180),
            child: Opacity(
              opacity: 0.73,
              child: Image.asset(
                "assets/images/imagenFondoTarjeta.png",
                height: 713.93,
                width: 713.93,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 370.0,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  viewportFraction: 0.6),
              items: [PokemonCarrusel(), PokemonCarrusel(), PokemonCarrusel()]
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                Widget item = entry.value;
                return GestureDetector(
                  onTap: () {
                    //TODO
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: item,
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Text(
                "Durante algún tiempo después de su nacimiento, utiliza los nutrientes que contiene la semilla en su espalda para crecer.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 28, 28),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 5,
                      spreadRadius: 0,
                      offset: Offset(0, 4))
                ],
              ),
              width: 156,
              height: 39,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Tipo",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                Container(
                  width: 75,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: Offset(0, 4))
                    ],
                    color: Color.fromARGB(255, 166, 229, 168),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Grass",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  width: 75,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: Offset(0, 4))
                    ],
                    color: Color.fromARGB(255, 241, 129, 239),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Poison",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 28, 28),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 5,
                      spreadRadius: 0,
                      offset: Offset(0, 4))
                ],
              ),
              width: 251,
              height: 39,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Debilidad",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            SizedBox(
              height: 100,
              width: 300,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 4.0,
                children: [
                  Container(
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            // ignore: deprecated_member_use
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: Offset(0, 4))
                      ],
                      color: Color.fromARGB(255, 241, 129, 239),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Poison",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            // ignore: deprecated_member_use
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: Offset(0, 4))
                      ],
                      color: Color.fromARGB(255, 241, 129, 239),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Poison",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            // ignore: deprecated_member_use
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: Offset(0, 4))
                      ],
                      color: Color.fromARGB(255, 241, 129, 239),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Poison",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            // ignore: deprecated_member_use
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: Offset(0, 4))
                      ],
                      color: Color.fromARGB(255, 241, 129, 239),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Poison",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
