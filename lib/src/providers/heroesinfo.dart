import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier{
  String _heroe = 'Capitan America';
  Color colorBase = Colors.blue;

   String get heroe => _heroe;

  set heroe (String nombre){
    this._heroe = nombre;

    this.colorBase = (nombre == 'Capitan America') ? Colors.blue : Colors.red;
    notifyListeners();
  }
}