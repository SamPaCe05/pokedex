import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: AppBar(
          flexibleSpace: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Image.asset(
                "assets/images/pokedexLogo.png",
                height: 140,
                width: 387,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Image(
            image: AssetImage('assets/images/pokeball.png'),
            width: 502,
            height: 501,
            fit: BoxFit.contain,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 300,
        height: 80,
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.25),
              blurRadius: 60,
              offset: Offset(0, 4),
              spreadRadius: 0),
        ]),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/busqueda');
          },
          backgroundColor: Color.fromARGB(255, 255, 28, 28),
          child: Text(
            '¡Explorar!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
