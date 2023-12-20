class Calculos {
  final double pi = 3.14; // atributo do instancia
  static  const double piEstatico = 3.14; // atributo de classe

  double areaCirculo(double raio) { // método de instância
    return pi * (raio * raio);
  }

  static double areaCirculoEstatico(double raio) { // método de classe
    return piEstatico * (raio * raio);
  }
}
