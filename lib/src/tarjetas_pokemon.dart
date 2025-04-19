import 'package:flutter/material.dart';

class TarjetasPokemon extends StatelessWidget {
  const TarjetasPokemon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "#0001",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        spacing: 6,
                        children: [
                          Container(
                            width: 59,
                            height: 29.86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(255, 166, 229, 168),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Grass",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Container(
                            width: 63,
                            height: 29.86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(255, 241, 129, 239),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Poison",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 166, 229, 168),
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      Image(
                        image:
                            AssetImage('assets/images/imagenFondoTarjeta.png'),
                        height: 213,
                        width: 231,
                      ),
                      Image(
                        image: AssetImage('assets/images/bulbasaur.png'),
                        width: 232,
                        height: 213.2,
                        fit: BoxFit.contain,
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Bulbasaur",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
