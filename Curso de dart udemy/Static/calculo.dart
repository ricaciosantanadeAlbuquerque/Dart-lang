// variáveis estáticas pertencem  a classe e não a uma instância da classe /objeto
// Métodos estáticos só podem utilizar variáveis estáticas.
//Não é necessário instanciar  a classe  para  utilizar os métodos e atribultos  static

import 'dart:math';

class Calculo {
  double _pi = 3.14; // objeto
  static double piEstatico = 3.14; // classe

  double calculoArea(double raio) {
    // objeto

    return pi * (raio * raio);
  }

  static double calcularAreaCirculoStatic(double raio) {
    return piEstatico * (raio * raio);
  }

  double get pi => this._pi;

  void set pi(double pi) {
    this._pi = pi;
  }
}
