import 'package:flutter/material.dart';

final _coloresMap = <String, Color>{
  'grass': Color.fromARGB(255, 166, 229, 168),
  'poison': Color.fromARGB(255, 241, 129, 239),
  'fire': Color.fromARGB(255, 253, 125, 36),
  'water': Color.fromARGB(255, 69, 146, 196),
  'fighting': Color.fromARGB(255, 240, 154, 100),
  'normal': Color.fromARGB(255, 217, 217, 217),
  'electric': Color.fromARGB(255, 238, 213, 53),
  'bug': Color.fromARGB(255, 114, 159, 63),
  'psychic': Color.fromARGB(255, 243, 102, 185),
  'rock': Color.fromARGB(255, 163, 140, 33),
  'ice': Color.fromARGB(255, 60, 250, 228),
  'ghost': Color.fromARGB(255, 123, 98, 163),
  'dragon': Color.fromARGB(255, 241, 110, 87),
  'dark': Color.fromARGB(255, 112, 112, 112),
  'fairy': Color.fromARGB(255, 253, 185, 223),
  'ground': Color.fromARGB(255, 171, 152, 66),
  'stellar': Color.fromARGB(255, 26, 231, 153),
  'flying': Color.fromARGB(255, 190, 165, 149),
  'steel': Color.fromARGB(255, 158, 183, 184),
};

Color getColorPorTipo(String tipo) {
  return _coloresMap[tipo] ?? Color.fromARGB(255, 255, 255, 255);
}
